  import 'package:bookly_clean_arich/features/home/domain/repo/home_repo.dart';
import 'package:bookly_clean_arich/features/home/domain/use_cases/use_case_main.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errores/failure.dart';
import '../entities/book_entity.dart';

class FetchFeatureUseCase  extends UseCase<List<BookEntity>,int>{
    final HomeRepo homeRepo;

  FetchFeatureUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int  pageNumber =0]) async{
    return await homeRepo.fetchFutureBooks(
      pageNumber: pageNumber,
    );
    throw UnimplementedError();
  }




  }



  class NoParam{}