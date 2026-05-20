import 'package:flutter/material.dart';

enum CodeVisibility {
  show(tabName: 'Show Code', icon: Icons.qr_code),
  enter(tabName: 'Enter Code', icon: Icons.keyboard);

  const CodeVisibility({required this.tabName, required this.icon});

  final String tabName;
  final IconData icon;
}
