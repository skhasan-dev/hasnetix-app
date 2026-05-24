import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        UserTypeConverter,
        UserType,
        DeviceOrStringConvertor,
        DeviceListOrStringListConvertor;
import 'package:hasnetix/src/features/auth/index.dart'
    show UserStorage, Device, $UserStorageCopyWith, $DeviceCopyWith;

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: '_id') String? id,
    String? userId,
    @UserTypeConverter() UserType? type,
    String? name,
    String? email,
    int? monthlyUsage,
    UserStorage? storage,
    DateTime? usageResetAt,
    @DeviceOrStringConvertor() Device? device,
    @DeviceListOrStringListConvertor() List<Device>? lastPairedDevices,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
