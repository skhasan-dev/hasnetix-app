import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors, AppTextStyles;
import 'package:hasnetix/src/core/index.dart' show Toasts, PairingStatus;
import 'package:hasnetix/src/features/pairing/index.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShowQrCode extends StatefulWidget {
  const ShowQrCode({required this.session, super.key});

  final PairingSession? session;

  @override
  State<ShowQrCode> createState() => _ShowQrCodeState();
}

class _ShowQrCodeState extends State<ShowQrCode> {
  Timer? _timer;

  final ValueNotifier<Duration> remainingNotifier = ValueNotifier(
    Duration.zero,
  );

  @override
  void initState() {
    super.initState();

    _updateRemainingTime();

    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _updateRemainingTime(),
    );
  }

  void _updateRemainingTime() {
    final expiresAt = widget.session?.expiresAt;

    if (expiresAt == null) return;

    final difference = expiresAt.difference(DateTime.now());

    if (difference.isNegative) {
      remainingNotifier.value = Duration.zero;
      _timer?.cancel();
      return;
    }

    remainingNotifier.value = difference;
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');

    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');

    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer?.cancel();
    remainingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: QrImageView(data: widget.session?.code ?? '', size: 200),
          ),

          const SizedBox(height: 24),

          Text(
            'YOUR PAIRING CODE',
            style: AppTextStyles.s14W500.copyWith(color: AppColors.secText),
          ),

          const SizedBox(height: 12),

          InkWell(
            onTap: () {
              Clipboard.setData(
                ClipboardData(text: widget.session?.code ?? ''),
              );

              Toasts.showSuccessToast(context, message: 'Copied Successfully!');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.session?.code ?? '',
                    style: AppTextStyles.s38W600.copyWith(
                      color: AppColors.text,
                      letterSpacing: 7.5,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Icon(Icons.copy, color: AppColors.primary, size: 32),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          ValueListenableBuilder<Duration>(
            valueListenable: remainingNotifier,
            builder: (_, remaining, __) {
              final isExpiringSoon =
                  remaining.inSeconds <= 30 && remaining != Duration.zero;

              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: isExpiringSoon ? Colors.red : AppColors.text,
                    size: 20,
                  ),

                  const SizedBox(width: 8),

                  Text(
                    remaining == Duration.zero
                        ? 'Code Expired'
                        : 'Expires in ${_formatDuration(remaining)}',
                    style: AppTextStyles.s14W500.copyWith(
                      color: isExpiringSoon ? Colors.red : AppColors.text,
                    ),
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 32),

          if (widget.session?.status != PairingStatus.active)
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.refresh, color: AppColors.primary, size: 28),

                  const SizedBox(width: 8),

                  Text(
                    'Refresh Code',
                    style: AppTextStyles.s18W600.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
