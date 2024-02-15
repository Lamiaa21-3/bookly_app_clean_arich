import 'package:bookly_clean_arich/features/home/domain/repo/home_repo.dart';
import 'package:bookly_clean_arich/features/home/domain/use_cases/use_case_main.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errores/failure.dart';
import '../entities/book_entity.dart';

class FetchNewestBookUseCase  extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchNewestBookUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
    return await homeRepo.fetchNewBooks();
    throw UnimplementedError();
  }




}



class NoParam{}