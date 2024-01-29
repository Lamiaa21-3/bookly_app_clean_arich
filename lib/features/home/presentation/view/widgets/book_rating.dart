import 'package:bookly_clean_arich/core/utiltes/styles_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        Icon(
        Icons.star,
          color: Colors.amber,

        ),
        SizedBox(width: 5,),
        Text('4.5',style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('(2987)',style: Styles.textStyle14.copyWith(color: Colors.grey),),

      ],
    );
  }
}
