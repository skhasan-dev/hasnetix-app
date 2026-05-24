// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaFile _$MediaFileFromJson(Map<String, dynamic> json) => _MediaFile(
  id: json['_id'] as String?,
  fileId: json['fileId'] as String?,
  originalName: json['originalName'] as String?,
  downloadUrl: json['downloadUrl'] as String?,
  size: (json['size'] as num?)?.toInt(),
  fileType: _$JsonConverterFromJson<String, FileTypes>(
    json['fileType'],
    const FileTypesConverter().fromJson,
  ),
  userId: json['userId'] as String?,
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  status: _$JsonConverterFromJson<String, FileStatus>(
    json['status'],
    const FileStatusConverter().fromJson,
  ),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$MediaFileToJson(_MediaFile instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fileId': instance.fileId,
      'originalName': instance.originalName,
      'downloadUrl': instance.downloadUrl,
      'size': instance.size,
      'fileType': _$JsonConverterToJson<String, FileTypes>(
        instance.fileType,
        const FileTypesConverter().toJson,
      ),
      'userId': instance.userId,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'status': _$JsonConverterToJson<String, FileStatus>(
        instance.status,
        const FileStatusConverter().toJson,
      ),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
