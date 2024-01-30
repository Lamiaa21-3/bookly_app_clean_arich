import 'package:flutter/material.dart';

import '../../../../../../core/utiltes/custom_book_logo.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var  width = MediaQuery.of(context).size.width;
    return   SafeArea(
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.only(left: width * .4,right: width * .2),
            child: CustomBookLogo(),
          ),
        ],
      ),
    );
  }
}

