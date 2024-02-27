

import 'package:bookly_clean_arich/features/home/domain/use_cases/features_books_use_case.dart';
import 'package:bookly_clean_arich/features/home/pres/manage/featured_books_cubit/featured_books_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookStates> {
  FeaturedBookCubit(this.featureUseCase) : super(FeaturedBookInitial());

 final FetchFeatureUseCase featureUseCase;

  Future<void> fetchFeatureBook  ({int pageNumber = 0})async{
    emit(FeaturedBookLoading());
   var result= await featureUseCase.call(pageNumber);
   print(result);
   result.fold((failure) {
     print(result.length());
     print(failure.error);
     emit(FeaturedBookFailure(failure.error));
     
   }, (books){
     emit(FeaturedBookSuccess(books));
   });


  }
}