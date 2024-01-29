import 'package:flutter/material.dart';

import '../../../../../core/utiltes/styles_data.dart';
import 'best_seller_list_view_ietm.dart';
import 'custom_appbar.dart';
import 'feature_list_book.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeatureListBook(),
        Text('Best Seller',),
        BestSellerListViewIetm(),
      ],
    );
  }
}
