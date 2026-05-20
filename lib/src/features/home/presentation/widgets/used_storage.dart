import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors, AppTextStyles;
import 'package:hasnetix/src/core/index.dart' show UserType, AppStateProvider;
import 'package:hasnetix/src/features/auth/index.dart' show User, UserStorage;
import 'package:hasnetix/src/features/home/index.dart' show StorageSlider;
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
        child: Column(
          spacing: 8,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Local Storage',
                    style: AppTextStyles.s12W600.copyWith(
                      color: AppColors.secText,
                    ),
                  ),
                ),
                Text(
                  '${_getUsedStorage(user?.storage, user?.type)}% used',
                  style: AppTextStyles.s12W600.copyWith(color: AppColors.text),
                ),
              ],
            ),
            StorageSlider(percent: _getUsedStorage(user?.storage, user?.type)),
          ],
        ),
      ),
    );
  }

  int _getUsedStorage(UserStorage? storage, UserType? type) {
    log(storage?.toJson().toString() ?? 'Null USer');
    if (storage == null) return 0;

    final totalStorageBytes =
        (1024 * 1024 * 1024) * (type == UserType.google ? 5 : 1);

    final usedBytes = storage.totalUsed ?? 0;

    log(usedBytes.toString() ?? ' NullByes');

    log(((usedBytes / totalStorageBytes) * 100).toInt().toString());

    return ((usedBytes / totalStorageBytes) * 100).toInt();
  }
}
