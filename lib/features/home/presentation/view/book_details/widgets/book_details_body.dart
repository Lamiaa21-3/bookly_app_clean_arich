import 'package:bookly_clean_arich/core/utiltes/book_rating.dart';
import 'package:bookly_clean_arich/core/utiltes/styles_data.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/book_details/widgets/book_text_button_reaction.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/home/widgets/best_seller_list_view_ietm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utiltes/custom_book_logo.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.only(left: width * .4, right: width * .2),
            child: const CustomBookLogo(),
          ),
          Text(
            'The Jungle Book ',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling ',
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150),
            child: BookRating(),
          ),
          const BookButtonReaction(),
          const Padding(
            padding: EdgeInsets.only(top: 12,left: 15,bottom: 15),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text('you can also like',style: Styles.textStyle16,)),
          ),
          CustomeListViewDetails(),
        ],
      ),
    );
  }
}
class CustomeListViewDetails extends StatelessWidget {
  const CustomeListViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(

          scrollDirection: Axis.horizontal,

          itemCount: 20,
          itemBuilder: (context,index){

            return const CustomBookLogo();

          }),
    );
  }
}
