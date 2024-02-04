import 'package:flutter/material.dart';

import '../../home/pres/widgets/best_seller_list_view_ietm.dart';


class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: 10,
        itemBuilder: (context,index){
          return const BestSellerListViewIetm();
        });
  }
}