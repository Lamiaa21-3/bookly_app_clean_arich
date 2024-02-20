import 'package:bookly_clean_arich/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFutureBooks();

  List<BookEntity> fetchNewsFutureBooks();
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFutureBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
     return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsFutureBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}