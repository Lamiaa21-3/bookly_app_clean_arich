

import 'package:bookly_clean_arich/core/errores/failure.dart';
import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future <Either< Failure,List<BookEntity>>>  fetchFutureBooks({int pageNumber = 0});
  Future <Either< Failure,List<BookEntity>>> fetchNewBooks();
}