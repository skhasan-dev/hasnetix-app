import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/navigation/enums.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final void Function(int) onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // @override
  // void initState() {
  //   WidgetsBinding.instance.addObserver(this);
  //   getIt<AppStateProvider>().checkForNotifications();
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }
  //
  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   super.didChangeAppLifecycleState(state);
  //   if (state == AppLifecycleState.resumed) {
  //     getIt<AppStateProvider>().checkForNotifications();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.text.withValues(alpha: 0.5),
          width: 0.7,
        ),
      ),
      child: StylishBottomBar(
        currentIndex: widget.currentIndex,
        backgroundColor: AppColors.background,
        onTap: (index) => widget.onTap(index),
        items: [
          ...NavItem.values.map((item) {
            final isSelected =
                NavItem.values.indexOf(item) == widget.currentIndex;

            Widget iconWidget = Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  isSelected ? item.selectedIcon : item.unSelectedIcon,
                  color: isSelected ? AppColors.primary : AppColors.secText,
                ),

                if (item == NavItem.profile)
                  Positioned(right: -2, top: -2, child: Indicator()),
              ],
            );

            return BottomBarItem(
              icon: iconWidget,
              title: Text(
                item.label,
                style: AppTextStyles.s12W400.copyWith(
                  color: isSelected ? AppColors.primary : AppColors.secText,
                ),
              ),
            );
          }),
        ],
        option: AnimatedBarOptions(iconStyle: IconStyle.Default),
      ),
    );
  }
}
