import 'package:hasnetix/src/core/network/typedef.dart';
import 'package:hasnetix/src/features/pairing/index.dart';

class PairingRepositoryImpl implements PairingRepository {
  const PairingRepositoryImpl(PairingDataSource dataSource)
    : _dataSource = dataSource;

  final PairingDataSource _dataSource;

  @override
  ResultFuture<PairingSession?> openSession() => _dataSource.openSession();

  @override
  ResultFuture<PairingSession?> pairDevice(String code) =>
      _dataSource.pairDevice(code);
}
