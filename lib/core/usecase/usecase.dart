import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:kepu/core/errors/failure.dart';

import '../utils/constants.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}

