

import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future <List<BookEntity>>  fetchFutureBooks();
  Future <List<BookEntity>>  fetchNewBooks();
}