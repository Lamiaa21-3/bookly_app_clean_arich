


import 'package:bookly_clean_arich/core/errores/failure.dart';
import 'package:bookly_clean_arich/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_clean_arich/features/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arich/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo{
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({ required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFutureBooks()async {
    try{
      var bookList = homeLocalDataSource.fetchFutureBooks();
      if(bookList.isNotEmpty)
        {
          return right(bookList);
        }
      var books =await homeRemoteDataSource.fetchFutureBooks();
      return right(books);
    }
    catch(e)
    {
      if( e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      else {
        return left(ServerFailure(e.toString()));
      }
    }
    

  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks()async {

    try{
      List<BookEntity> books;
       books = homeLocalDataSource.fetchNewsFutureBooks();
      if(books.isNotEmpty)
      {
        return right(books);
      }
       books =await homeRemoteDataSource.fetchNewsFutureBooks();
      return right(books);
    }
    catch(e)
    {
      return left(ServerFailure(e.toString()));
    }
  }

}