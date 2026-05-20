import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/features/pairing/index.dart';
import 'package:hasnetix/src/features/pairing/presentation/widgets/code_enter.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ShowQrCode(
                    session: PairingSession(
                      code: '654321',
                      expiresAt: DateTime.now().add(Duration(seconds: 5)),
                    ),
                  ),
                  CodeEnter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
