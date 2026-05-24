import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppTextStyles, AppColors;
import 'package:hasnetix/src/core/index.dart' show SizeFormat;

class StorageBar extends StatelessWidget {
  const StorageBar({
    required this.value,
    required this.format,
    this.showLabel = false,
    this.showHeading = false,
    this.maxValue = 1024,
    super.key,
  });

  final int value;
  final int maxValue;
  final SizeFormat format;
  final bool showLabel;
  final bool showHeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showHeading)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Local Storage',
                  style: AppTextStyles.s12W600.copyWith(
                    color: AppColors.secText,
                  ),
                ),
              ),
              Text(
                '$percent% used',
                style: AppTextStyles.s12W600.copyWith(color: AppColors.text),
              ),
            ],
          ),

        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              Expanded(
                flex: percent,
                child: Container(height: 8, color: AppColors.primary),
              ),
              Expanded(
                flex: 100 - percent,
                child: Container(height: 8, color: AppColors.card),
              ),
            ],
          ),
        ),

        if (showLabel)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${formattedValue(value)} ${format.label}',
                style: AppTextStyles.s10W700.copyWith(color: AppColors.secText),
              ),

              Text(
                '$maxValue ${format.label}',
                style: AppTextStyles.s10W700.copyWith(color: AppColors.secText),
              ),
            ],
          ),
      ],
    );
  }

  int get percent {
    if (maxValue == 0) return 0;

    final current = value / format.bytes;

    return ((current / maxValue) * 100).clamp(0, 100).toInt();
  }

  String formattedValue(int bytes) {
    return (bytes / format.bytes).toStringAsFixed(2);
  }
}
