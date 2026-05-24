import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/home/presentation/widgets/file_item.dart';

class TransferredFiles extends StatelessWidget {
  const TransferredFiles({required this.files, super.key});

  final List<MediaFile> files;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'RECENT TRANSFERS',
              style: AppTextStyles.s14W700.copyWith(color: AppColors.secText),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'View Hub',
                style: AppTextStyles.s14W500.copyWith(color: AppColors.primary),
              ),
            ),
          ],
        ),

        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: files.take(5).length,
          itemBuilder: (_, index) {
            return FileItem(file: files.take(5).toList()[index]);
          },
          separatorBuilder: (_, _) => SizedBox(height: 16),
        ),
      ],
    );
  }
}
