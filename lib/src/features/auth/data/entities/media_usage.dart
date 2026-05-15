import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_usage.freezed.dart';
part 'media_usage.g.dart';

@freezed
abstract class MediaUsage with _$MediaUsage {
  const factory MediaUsage({int? used, int? count}) = _MediaUsage;

  factory MediaUsage.fromJson(Map<String, dynamic> json) =>
      _$MediaUsageFromJson(json);
}
