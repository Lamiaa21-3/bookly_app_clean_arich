import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:bookly_clean_arich/core/utiltes/styles_data.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class BestSellerListViewIetm extends StatelessWidget {
  const BestSellerListViewIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Image.asset(AssetsData.test),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    "Harry Potter And The Goblet Of Fire",
                    maxLines: 2,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectrFine),
                  ),
              ),
              const SizedBox(height: 10,),
              const Text('J.K rawlling ',style: Styles.textStyle14,),
              const Row(
                children: [
                  Text('19.9\$',style: Styles.textStyle20,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
