import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(label: 'Profile'));
  }
}
