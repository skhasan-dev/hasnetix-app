// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
  userId: json['userId'] as String?,
  id: json['deviceId'] as String?,
  name: json['deviceName'] as String?,
  token: json['fcmToken'] as String?,
  type: _$JsonConverterFromJson<String, DeviceType>(
    json['type'],
    const DeviceTypeConverter().fromJson,
  ),
);

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'userId': instance.userId,
  'deviceId': instance.id,
  'deviceName': instance.name,
  'fcmToken': instance.token,
  'type': _$JsonConverterToJson<String, DeviceType>(
    instance.type,
    const DeviceTypeConverter().toJson,
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
