import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(label: 'Hasnetix'));
  }
}
