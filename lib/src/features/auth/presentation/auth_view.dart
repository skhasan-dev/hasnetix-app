import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/common/widgets/app_button.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: AppColors.text,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(Icons.lightbulb_outline_sharp),
            ),
            const SizedBox(height: 32),
            Text(
              'Transfer Anything.',
              style: AppTextStyles.s30W600.copyWith(color: AppColors.text),
            ),
            Text(
              'Instantly.',
              style: AppTextStyles.s30W600.copyWith(color: AppColors.primary),
            ),
            const SizedBox(height: 12),
            Text(
              'Secure, lightning-fast file sharing between all your devices without the cloud.',
              textAlign: TextAlign.center,
              style: AppTextStyles.s16W400.copyWith(color: AppColors.secText),
            ),
            const SizedBox(height: 48),
            Row(
              spacing: 24,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Secure',
                  style: AppTextStyles.s12W600.copyWith(
                    color: AppColors.secText,
                  ),
                ),
                Text(
                  'Private',
                  style: AppTextStyles.s12W600.copyWith(
                    color: AppColors.secText,
                  ),
                ),
                Text(
                  'Fast',
                  style: AppTextStyles.s12W600.copyWith(
                    color: AppColors.secText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppButton(label: 'Continue with Google', onPressed: () {}),
                const SizedBox(height: 16),
                AppButton.outlined(
                  label: 'Continue as Guest',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'By continuing, you agree to our Terms of Service and Privacy Policy.',
                textAlign: TextAlign.center,
                style: AppTextStyles.s14W400.copyWith(color: AppColors.secText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
