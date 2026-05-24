import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors, StorageBar;
import 'package:hasnetix/src/core/index.dart' show AppStateProvider, SizeFormat;
import 'package:hasnetix/src/features/auth/index.dart' show User;
import 'package:provider/provider.dart';

class UsedStorage extends StatelessWidget {
  const UsedStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<AppStateProvider, User?>(
      selector: (_, vm) => vm.user,
      builder: (_, user, _) => Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
          color: AppColors.chip,
        ),
        child: StorageBar(
          value: user?.storage?.totalUsed ?? 0,
          format: SizeFormat.mb,
          showHeading: true,
          maxValue: 1024,
        ),
      ),
    );
  }
}
