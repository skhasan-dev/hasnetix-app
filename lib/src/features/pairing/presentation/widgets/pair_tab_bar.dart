import 'package:flutter/cupertino.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/features/pairing/index.dart';

class PairTabBar extends StatelessWidget {
  const PairTabBar({
    required this.selectedTab,
    required this.onChanged,
    super.key,
  });

  final CodeVisibility? selectedTab;
  final ValueChanged<CodeVisibility> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CupertinoSlidingSegmentedControl<CodeVisibility>(
        backgroundColor: AppColors.background,
        padding: EdgeInsets.all(8),
        groupValue: selectedTab,
        thumbColor: AppColors.card,
        children: Map.fromEntries([
          ...CodeVisibility.values.map((tab) {
            final isSelected = tab == selectedTab;
            return MapEntry(
              tab,
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      tab.icon,
                      color: isSelected ? AppColors.primary : AppColors.text,
                    ),
                    Text(
                      tab.tabName,
                      style: AppTextStyles.s14W700.copyWith(
                        color: isSelected ? AppColors.primary : AppColors.text,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ]),
        onValueChanged: (tab) {
          if (tab == null) return;
          onChanged.call(tab);
        },
      ),
    );
  }
}
