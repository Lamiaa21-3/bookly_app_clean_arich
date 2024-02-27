import 'package:flutter/material.dart';

import '../../../../../../core/utiltes/custom_book_logo.dart';

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

            return const CustomBookLogo(image: '',);

          }),
    );
  }
}