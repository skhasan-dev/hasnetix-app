import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/auth/index.dart';
import 'package:hasnetix/src/features/home/index.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewModel homeViewModel = getIt();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final failure = await homeViewModel.getFiles();
      failure?.showError(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: homeViewModel,
      child: Scaffold(
        appBar: CustomAppBar(label: 'Hasnetix'),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Selector<HomeViewModel, List<Device>>(
                selector: (_, vm) => vm.devices,
                builder: (_, devices, _) => ConnectedDevices(devices: devices),
              ),
              const SizedBox(height: 24),
              Selector<HomeViewModel, List<MediaFile>>(
                selector: (_, vm) => vm.files,
                builder: (_, files, _) => TransferredFiles(files: files),
              ),
              const SizedBox(height: 24),
              UsedStorage(),
            ],
          ),
        ),
      ),
    );
  }
}
