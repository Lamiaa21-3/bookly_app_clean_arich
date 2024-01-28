import 'package:bookly_clean_arich/features/home/presentation/view/widgets/custom_list_view_ietm.dart';
import 'package:flutter/material.dart';

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

        return const CustomListViewIetm();

      }),
    );
  }
}
