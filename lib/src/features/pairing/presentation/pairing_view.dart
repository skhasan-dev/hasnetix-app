import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/pairing/index.dart';
import 'package:hasnetix/src/features/pairing/presentation/widgets/code_enter.dart';
import 'package:provider/provider.dart';

class PairingView extends StatefulWidget {
  const PairingView({super.key});

  @override
  State<PairingView> createState() => _PairingViewState();
}

class _PairingViewState extends State<PairingView> {
  final PageController pageController = PageController();
  final ValueNotifier<CodeVisibility> selectedTabNotifier = ValueNotifier(
    CodeVisibility.show,
  );

  PairingViewModel pairingViewModel = PairingViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final failure = await pairingViewModel.openSession();
      failure?.showError(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: pairingViewModel,
      child: Scaffold(
        appBar: CustomAppBar(
          icon: Icons.keyboard_arrow_left,
          label: 'Pair Devices',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: selectedTabNotifier,
                builder: (context, selectedTab, child) {
                  return PairTabBar(
                    selectedTab: selectedTab,
                    onChanged: (tab) => pageController.animateToPage(
                      tab.index,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    ),
                  );
                },
              ),
              const SizedBox(height: 48),
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    selectedTabNotifier.value = CodeVisibility.values[index];
                  },
                  children: [
                    Selector<PairingViewModel, PairingSession?>(
                      builder: (_, session, _) {
                        return ShowQrCode(session: session);
                      },
                      selector: (_, vm) => vm.session,
                    ),
                    CodeEnter(
                      onCodeSubmitted: (code) async {
                        final failure = await pairingViewModel.pairDevice(code);
                        Toasts.showSuccessOrFailureToast(
                          context,
                          failure: failure,
                          successMsg: 'Device Paired Successful',
                          popOnSuccess: true,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
