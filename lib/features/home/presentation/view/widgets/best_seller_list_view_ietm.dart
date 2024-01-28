import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:flutter/material.dart';


class BestSellerListViewIetm extends StatelessWidget {
  const BestSellerListViewIetm ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Image.asset(AssetsData.test),
        ],
      ),
    );
  }
}
