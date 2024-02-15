


import 'package:dartz/dartz.dart';

import '../../../../core/errores/failure.dart';

abstract class UseCase<Type,Param> {
  Future<Either<Failure,Type>> call([Param param]);
}