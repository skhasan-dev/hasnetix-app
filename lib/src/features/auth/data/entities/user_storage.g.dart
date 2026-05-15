// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserStorage _$UserStorageFromJson(Map<String, dynamic> json) => _UserStorage(
  userId: json['userId'] as String?,
  image: json['image'] == null
      ? null
      : MediaUsage.fromJson(json['image'] as Map<String, dynamic>),
  video: json['video'] == null
      ? null
      : MediaUsage.fromJson(json['video'] as Map<String, dynamic>),
  document: json['document'] == null
      ? null
      : MediaUsage.fromJson(json['document'] as Map<String, dynamic>),
  other: json['other'] == null
      ? null
      : MediaUsage.fromJson(json['other'] as Map<String, dynamic>),
  totalUsed: (json['totalUsed'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserStorageToJson(_UserStorage instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'image': instance.image,
      'video': instance.video,
      'document': instance.document,
      'other': instance.other,
      'totalUsed': instance.totalUsed,
    };
