import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  Future<List<BookEntity>> fetchFutureBooks();

  Future<List<BookEntity>> fetchNewsFutureBooks();
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource{
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