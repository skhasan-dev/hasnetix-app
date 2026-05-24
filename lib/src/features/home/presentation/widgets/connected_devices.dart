import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/auth/index.dart';
import 'package:hasnetix/src/features/home/index.dart';

class ConnectedDevices extends StatelessWidget {
  const ConnectedDevices({required this.devices, super.key});

  final List<Device> devices;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (devices.isEmpty)
          Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.card,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.health_and_safety, color: AppColors.text, size: 40),
                const SizedBox(height: 32),
                Align(
                  child: Text(
                    'No devices paired',
                    style: AppTextStyles.s24W600.copyWith(
                      color: AppColors.text,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  child: Text(
                    'Pair your primary device to start sending files instantly and securely.',
                    style: AppTextStyles.s16W400.copyWith(
                      color: AppColors.secText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                AppButton(
                  label: 'Pair a device',
                  onPressed: () async {
                    final result = await context.pushNamed(RouteNames.pairing);
                    if (result == true) {
                      final failure = await getIt<AppStateProvider>()
                          .getUserDetails();
                      failure?.showError(context);
                    }
                  },
                ),
              ],
            ),
          )
        else
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CONNECTED DEVICES',
                style: AppTextStyles.s14W700.copyWith(color: AppColors.secText),
              ),
              const SizedBox(height: 12),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: devices.take(5).length,
                itemBuilder: (_, index) {
                  return ConnectedDevice(
                    device: devices.take(5).toList()[index],
                  );
                },
                separatorBuilder: (_, _) => SizedBox(height: 16),
              ),
              const SizedBox(height: 24),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppButton(
                    icon: Icon(Icons.send),
                    label: 'Send Files',
                    onPressed: () {},
                    enabled: devices.isNotEmpty,
                  ),
                  const SizedBox(height: 12),
                  Align(
                    child: Text(
                      'Pair with another device to enable quick transfers.',
                      style: AppTextStyles.s12W600.copyWith(
                        color: AppColors.secText.withValues(
                          alpha: devices.isNotEmpty ? 1 : 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
