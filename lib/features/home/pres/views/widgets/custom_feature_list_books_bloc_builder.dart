import 'package:bookly_clean_arich/features/home/pres/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_clean_arich/features/home/pres/manage/featured_books_cubit/featured_books_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature_list_book.dart';


class CustomFeatureListBookBlockBuilder extends StatelessWidget {
  const CustomFeatureListBookBlockBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<FeaturedBookCubit,FeaturedBookStates>(
      builder: (context,state){
        if(state is FeaturedBookSuccess) {
        return  FeatureListBook(books: state.books,);
      }
        else if (state is FeaturedBookFailure)
          {
            return Text(state.errorMessage);

          }
        else {
          return const CircularProgressIndicator();
        }
    });


  }
}
