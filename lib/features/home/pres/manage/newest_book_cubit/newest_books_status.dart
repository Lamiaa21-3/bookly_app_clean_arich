import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';

abstract class NewestBookStates {}

class NewestBookInitial extends NewestBookStates {}

class NewestBookLoading extends NewestBookStates {}

class NewestBookFailure extends NewestBookStates {
  final String errorMessage;

  NewestBookFailure(this.errorMessage);
}

class NewestBookSuccess extends NewestBookStates {
  final List<BookEntity> books;

  NewestBookSuccess(this.books);
}
