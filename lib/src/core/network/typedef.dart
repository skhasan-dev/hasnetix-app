import 'package:dartz/dartz.dart';
import 'package:hasnetix/src/core/network/exceptions.dart' show APIException;

typedef ResultFuture<T> = Future<Either<APIException, T>>;
typedef ResultVoid = ResultFuture<void>;
