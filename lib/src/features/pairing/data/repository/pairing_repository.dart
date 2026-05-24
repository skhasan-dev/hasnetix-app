import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/pairing/index.dart';

abstract class PairingRepository {
  ResultFuture<PairingSession?> openSession();

  ResultFuture<PairingSession?> pairDevice(String code);
}
