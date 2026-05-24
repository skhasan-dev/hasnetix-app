import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/pairing/index.dart';

abstract class PairingDataSource {
  ResultFuture<PairingSession?> openSession();

  ResultFuture<PairingSession?> pairDevice(String code);
}
