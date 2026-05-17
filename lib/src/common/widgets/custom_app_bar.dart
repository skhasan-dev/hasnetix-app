import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/common/index.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.icon,
    this.leading,
    this.label,
    this.title,
    this.actions,
    this.returnPopOnTrue = false,
  });

  final IconData? icon;
  final Widget? leading;
  final String? label;
  final Widget? title;
  final List<Widget>? actions;
  final bool returnPopOnTrue;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: icon == null
          ? leading
          : GestureDetector(
              onTap: () => context.pop(returnPopOnTrue),
              child: Icon(icon, color: AppColors.text, size: 24),
            ),
      title: label == null
          ? title
          : Text(
              label ?? '',
              style: AppTextStyles.s18W600.copyWith(color: AppColors.text),
            ),
      actions: [...?actions, SizedBox(width: 24)],
      backgroundColor: AppColors.background,
      surfaceTintColor: AppColors.background,
      elevation: 1.4,
      shadowColor: AppColors.text.withValues(alpha: 0.7),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
