import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/features/auth/index.dart'
    show MediaUsage, $MediaUsageCopyWith;

part 'user_storage.freezed.dart';
part 'user_storage.g.dart';

@freezed
abstract class UserStorage with _$UserStorage {
  const factory UserStorage({
    String? userId,
    MediaUsage? image,
    MediaUsage? video,
    MediaUsage? document,
    MediaUsage? other,
    int? totalUsed,
  }) = _UserStorage;

  factory UserStorage.fromJson(Map<String, dynamic> json) =>
      _$UserStorageFromJson(json);
}
