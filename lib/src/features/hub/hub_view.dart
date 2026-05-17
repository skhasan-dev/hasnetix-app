import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';

class HubView extends StatefulWidget {
  const HubView({super.key});

  @override
  State<HubView> createState() => _HubViewState();
}

class _HubViewState extends State<HubView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: 'Hub',
        actions: [GestureDetector(onTap: () {}, child: Icon(Icons.search))],
      ),
    );
  }
}
