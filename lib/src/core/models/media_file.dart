import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart';

part 'media_file.freezed.dart';
part 'media_file.g.dart';

@freezed
abstract class MediaFile with _$MediaFile {
  const factory MediaFile({
    @JsonKey(name: '_id') String? id,
    String? fileId,
    String? originalName,
    String? downloadUrl,
    int? size,
    @FileTypesConverter() FileTypes? fileType,
    String? userId,
    DateTime? expiresAt,
    @FileStatusConverter() FileStatus? status,
    DateTime? createdAt,
  }) = _MediaFile;

  factory MediaFile.fromJson(Map<String, dynamic> json) =>
      _$MediaFileFromJson(json);
}
