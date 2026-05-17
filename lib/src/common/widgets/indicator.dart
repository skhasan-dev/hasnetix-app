import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key, this.size = 6});

  final num size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.toDouble(),
      width: size.toDouble(),
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}
