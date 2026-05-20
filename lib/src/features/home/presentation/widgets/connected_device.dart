import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/features/auth/index.dart';

class ConnectedDevice extends StatelessWidget {
  const ConnectedDevice({required this.device, super.key});

  final Device device;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.card,
      ),
      child: Row(
        spacing: 16,
        children: [
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.primary),
              color: AppColors.secondary,
            ),
            child: Icon(device.type?.icon, color: AppColors.primary, size: 28),
          ),
          Flexible(
            child: Column(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  device.name ?? '',
                  style: AppTextStyles.s18W600.copyWith(color: AppColors.text),
                ),
                Row(
                  spacing: 6,
                  children: [
                    Indicator(inactive: true, size: 12),
                    Text(
                      'Connected',
                      style: AppTextStyles.s14W600.copyWith(
                        color: AppColors.secText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.border),
              color: AppColors.chip,
            ),
            child: Text(
              'Local',
              style: AppTextStyles.s12W600.copyWith(color: AppColors.secText),
            ),
          ),
        ],
      ),
    );
  }
}
