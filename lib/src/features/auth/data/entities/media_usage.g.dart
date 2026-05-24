// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaUsage _$MediaUsageFromJson(Map<String, dynamic> json) => _MediaUsage(
  used: (json['used'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$MediaUsageToJson(_MediaUsage instance) =>
    <String, dynamic>{'used': instance.used, 'count': instance.count};
