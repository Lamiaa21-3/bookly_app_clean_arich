

import 'package:bookly_clean_arich/features/home/domain/use_cases/features_books_use_case.dart';
import 'package:bookly_clean_arich/features/home/domain/use_cases/newest_books_use_case.dart';
import 'package:bookly_clean_arich/features/home/pres/manage/featured_books_cubit/featured_books_status.dart';
import 'package:bookly_clean_arich/features/home/pres/manage/newest_book_cubit/newest_books_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookCubit extends Cubit {
  NewestBookCubit(this.fetchNewestBookUseCase) : super(NewestBookInitial());

 final FetchNewestBookUseCase fetchNewestBookUseCase;

  Future<void> fetchFeatureBook ()async{
    emit(NewestBookLoading());
   var result= await fetchNewestBookUseCase.call();
   result.fold((failure) {
     emit(NewestBookFailure(failure.error));
     
   }, (books){
     emit(NewestBookSuccess(books));
   });


  }
}