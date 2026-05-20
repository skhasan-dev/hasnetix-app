import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/home/index.dart';
import 'package:hasnetix/src/features/hub/presentation/view_models/hub_view_model.dart';
import 'package:provider/provider.dart';

class HubView extends StatefulWidget {
  const HubView({super.key});

  @override
  State<HubView> createState() => _HubViewState();
}

class _HubViewState extends State<HubView> {
  HubViewModel hubViewModel = HubViewModel();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: hubViewModel,
      child: Scaffold(
        appBar: CustomAppBar(
          label: 'Hub',
          actions: [GestureDetector(onTap: () {}, child: Icon(Icons.search))],
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'STORAGE HEALTH',
                    style: AppTextStyles.s14W700.copyWith(
                      color: AppColors.secText,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppColors.chip,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  spacing: 24,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      spacing: 24,
                      children: [
                        ProgressIndicatorTheme(
                          data: ProgressIndicatorThemeData(
                            color: Colors.blue,
                            circularTrackColor: Colors.white,
                            strokeCap: StrokeCap.round,
                          ),
                          child: CircularProgressIndicator(value: 0.5),
                        ),

                        Column(
                          spacing: 8,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '1023 MB',
                                  style: AppTextStyles.s24W600.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  ' of 1 GB',
                                  style: AppTextStyles.s18W400.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'STORAGE WARNING: ',
                                  style: AppTextStyles.s14W600.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  'LOW SPACE',
                                  style: AppTextStyles.s14W600.copyWith(
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    StorageSlider(percent: 15),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Selector<HubViewModel, FileTypes>(
                  selector: (_, vm) => vm.selectedTab,
                  builder: (_, selectedTab, _) => Row(
                    spacing: 8,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ...FileTypes.values.map((type) {
                        final bool isSelected = type == selectedTab;
                        return GestureDetector(
                          onTap: () async {
                            await hubViewModel.changeTab(type);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.chip,
                            ),
                            child: Text(
                              type.label,
                              style: AppTextStyles.s12W600.copyWith(
                                color: AppColors.text,
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'RECENT TRANSFERS',
                    style: AppTextStyles.s14W700.copyWith(
                      color: AppColors.secText,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.sort, color: AppColors.text),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
