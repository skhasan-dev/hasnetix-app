import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hasnetix/src/common/index.dart' show AppTextStyles, AppButton;

class AppUtils {
  static Future<void> showExitDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Exit', style: AppTextStyles.s20W600)],
                ),
                const SizedBox(height: 24),
                Text(
                  'Are you sure you want to exit?',
                  style: AppTextStyles.s14W600,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: AppButton.outlined(
                        onPressed: SystemNavigator.pop,
                        label: 'Exit',
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: AppButton.outlined(
                        onPressed: SystemNavigator.pop,
                        label: 'Cancel',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
