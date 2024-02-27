import 'package:bookly_clean_arich/constants.dart';
import 'package:bookly_clean_arich/core/utiltes/api_service.dart';
import 'package:bookly_clean_arich/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../core/utiltes/functions/save_books_data.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFutureBooks({int pageNumber = 0});

  Future<List<BookEntity>> fetchNewsFutureBooks();
}

class HomeRemoteDataSourceImplem extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImplem(this.apiService);

  @override
  Future<List<BookEntity>> fetchFutureBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books,kFeaturedBox);
    return books;
  }




  @override
  Future<List<BookEntity>> fetchNewsFutureBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books,kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
