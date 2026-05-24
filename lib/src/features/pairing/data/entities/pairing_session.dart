import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/auth/data/index.dart';

part 'pairing_session.freezed.dart';
part 'pairing_session.g.dart';

@freezed
abstract class PairingSession with _$PairingSession {
  const factory PairingSession({
    String? userId,
    @JsonKey(name: 'pairingId') String? id,
    DateTime? expiresAt,
    String? code,
    @PairingStatusConverter() PairingStatus? status,
    Device? pairedWith,
    List<Device>? receivers,
  }) = _PairingSession;

  factory PairingSession.fromJson(Map<String, dynamic> json) =>
      _$PairingSessionFromJson(json);
}
