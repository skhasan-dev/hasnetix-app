import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: 'Notifications',
        actions: [
          GestureDetector(
            onTap: () {},
            child: Row(
              spacing: 4,
              children: [
                Icon(Icons.check, color: AppColors.primary),
                Text(
                  'Mark all as Read',
                  style: AppTextStyles.s12W600.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
