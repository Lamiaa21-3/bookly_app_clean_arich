

import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_ietm.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      itemCount: 10,
        itemBuilder: (context,index){
      return const BestSellerListViewIetm();
    });
  }
}
