  import 'package:bookly_clean_arich/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errores/failure.dart';
import '../entities/book_entity.dart';

class FetchFeatureUseCase{
    final HomeRepo homeRepo;

  FetchFeatureUseCase(this.homeRepo);
    Future <Either< Failure,List<BookEntity>>>  fetchFutureBooks(){
      return homeRepo.fetchFutureBooks();
    }
  }