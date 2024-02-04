

import 'package:flutter/cupertino.dart';

import '../../../../../../core/utiltes/custom_book_logo.dart';

class FeatureListBook extends StatelessWidget {
  const FeatureListBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,

        itemCount: 20,
          itemBuilder: (context,index){

        return const CustomBookLogo();

      }),
    );
  }
}
