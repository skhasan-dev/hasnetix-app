import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
abstract class Device with _$Device {
  const factory Device({
    String? userId,
    @JsonKey(name: 'deviceId') String? id,
    @JsonKey(name: 'deviceName') String? name,
    @JsonKey(name: 'fcmToken') String? token,
    @DeviceTypeConverter() DeviceType? type,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}
