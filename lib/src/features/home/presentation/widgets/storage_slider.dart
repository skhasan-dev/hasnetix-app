import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors;

class StorageSlider extends StatelessWidget {
  const StorageSlider({required this.percent, super.key});
  final int percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Expanded(
            flex: percent,
            child: Container(
              height: 8,
              decoration: BoxDecoration(color: AppColors.primary),
            ),
          ),
          Expanded(
            flex: 100 - percent,
            child: Container(
              height: 8,
              decoration: BoxDecoration(color: AppColors.card),
            ),
          ),
        ],
      ),
    );
  }
}
