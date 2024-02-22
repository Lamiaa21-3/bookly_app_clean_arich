


import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';

abstract class FeaturedBookStates {}

class FeaturedBookInitial extends FeaturedBookStates{}
class FeaturedBookLoading extends FeaturedBookStates{}
class FeaturedBookFailure extends FeaturedBookStates{
  final String errorMessage;

  FeaturedBookFailure(this.errorMessage);
}
class FeaturedBookSuccess extends FeaturedBookStates{
  final List<BookEntity> books;

  FeaturedBookSuccess(this.books);

}