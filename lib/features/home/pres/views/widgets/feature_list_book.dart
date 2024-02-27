

import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utiltes/custom_book_logo.dart';

class FeatureListBook extends StatelessWidget {
  const FeatureListBook({Key? key, required this.books}) : super(key: key);
 final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,

        itemCount: books.length,
          itemBuilder: (context,index){

        return Image.asset('assests/assets/Logo.png');

      }),
    );
  }
}
