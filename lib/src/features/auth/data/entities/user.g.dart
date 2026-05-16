// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  userId: json['userId'] as String?,
  type: _$JsonConverterFromJson<String, UserType>(
    json['type'],
    const UserTypeConverter().fromJson,
  ),
  name: json['name'] as String?,
  email: json['email'] as String?,
  monthlyUsage: (json['monthlyUsage'] as num?)?.toInt(),
  storage: json['storage'] == null
      ? null
      : UserStorage.fromJson(json['storage'] as Map<String, dynamic>),
  usageResetAt: json['usageResetAt'] == null
      ? null
      : DateTime.parse(json['usageResetAt'] as String),
  device: const DeviceOrStringConvertor().fromJson(json['device']),
  lastPairedDevices: const DeviceListOrStringListConvertor().fromJson(
    json['lastPairedDevices'],
  ),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'userId': instance.userId,
  'type': _$JsonConverterToJson<String, UserType>(
    instance.type,
    const UserTypeConverter().toJson,
  ),
  'name': instance.name,
  'email': instance.email,
  'monthlyUsage': instance.monthlyUsage,
  'storage': instance.storage,
  'usageResetAt': instance.usageResetAt?.toIso8601String(),
  'device': const DeviceOrStringConvertor().toJson(instance.device),
  'lastPairedDevices': const DeviceListOrStringListConvertor().toJson(
    instance.lastPairedDevices,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
