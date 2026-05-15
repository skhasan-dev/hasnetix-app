import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/common/widgets/app_button.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({this.isSchool = false, super.key});
  final bool isSchool;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(child: Icon(Icons.keyboard_arrow_left), onTap: () {}),
        actions: [],
        title: Text('Go to HomePage'),
      ),

      extendBodyBehindAppBar: true,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Page Not Found',
              style: AppTextStyles.s20W600.copyWith(color: AppColors.text),
            ),
            AppButton(label: 'Back to Chrome', onPressed: () {}),
            AppButton.outlined(label: 'Back to Chrome', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
