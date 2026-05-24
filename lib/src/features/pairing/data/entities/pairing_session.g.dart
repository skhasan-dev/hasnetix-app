// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PairingSession _$PairingSessionFromJson(Map<String, dynamic> json) =>
    _PairingSession(
      userId: json['userId'] as String?,
      id: json['pairingId'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      code: json['code'] as String?,
      status: _$JsonConverterFromJson<String, PairingStatus>(
        json['status'],
        const PairingStatusConverter().fromJson,
      ),
      pairedWith: json['pairedWith'] == null
          ? null
          : Device.fromJson(json['pairedWith'] as Map<String, dynamic>),
      receivers: (json['receivers'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PairingSessionToJson(_PairingSession instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'pairingId': instance.id,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'code': instance.code,
      'status': _$JsonConverterToJson<String, PairingStatus>(
        instance.status,
        const PairingStatusConverter().toJson,
      ),
      'pairedWith': instance.pairedWith,
      'receivers': instance.receivers,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
