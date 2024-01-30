import 'package:flutter/material.dart';

import '../../../../../core/utiltes/styles_data.dart';
import 'best_seller_list_view_ietm.dart';
import 'custom_appbar.dart';
import 'custom_list_view.dart';
import 'feature_list_book.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Padding(
            padding:  EdgeInsets.only(left: 14),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeatureListBook(),
                Text('Best Seller',),

              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child:   CustomListView(),
        )
      ],
    );


  }
}
