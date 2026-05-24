import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart';

class FileItem extends StatelessWidget {
  const FileItem({required this.file, super.key});

  final MediaFile file;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: AppColors.chip,
          border: Border.all(color: AppColors.card),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Icon(
            file.fileType?.icon,
            size: 20,
            color: file.fileType?.iconColor,
          ),
        ),
      ),
      title: Text(
        file.originalName ?? '',
        style: AppTextStyles.s14W600.copyWith(color: AppColors.text),
      ),
      subtitle: Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            file.size?.formattedSize ?? '',
            style: AppTextStyles.s12W400.copyWith(color: AppColors.secText),
          ),
          Text(
            file.createdAt?.toRelativeTime() ?? '',
            style: AppTextStyles.s12W400.copyWith(color: AppColors.secText),
          ),
        ],
      ),
    );
  }
}
