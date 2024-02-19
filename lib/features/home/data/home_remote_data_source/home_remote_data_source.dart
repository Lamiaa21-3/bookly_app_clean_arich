

import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFutureBooks();
  Future<List<BookEntity>> fetchNewsFutureBooks();
}
class HomeRemoteDataSourceImplem extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchFutureBooks() {
    // TODO: implement fetchFutureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewsFutureBooks() {
    // TODO: implement fetchNewsFutureBooks
    throw UnimplementedError();
  }

}