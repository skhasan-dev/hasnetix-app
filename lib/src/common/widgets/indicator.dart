import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors;

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    this.size = 6,
    this.inactive = false,
    this.color = AppColors.primary,
  });

  final num size;
  final bool inactive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.toDouble(),
      width: size.toDouble(),
      decoration: BoxDecoration(
        color: inactive ? Colors.transparent : color,
        shape: BoxShape.circle,
        border: inactive ? Border.all(color: Colors.white) : null,
      ),
    );
  }
}
