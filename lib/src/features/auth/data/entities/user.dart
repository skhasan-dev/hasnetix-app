import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart' show UserTypeConverter, UserType;
import 'package:hasnetix/src/features/auth/index.dart'
    show UserStorage, Device, $UserStorageCopyWith, $DeviceCopyWith;

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String? userId,
    @UserTypeConverter() UserType? type,
    String? name,
    String? email,
    int? monthlyUsage,
    UserStorage? storage,
    DateTime? usageResetAt,
    Device? device,
    List<Device>? lastPairedDevices,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
