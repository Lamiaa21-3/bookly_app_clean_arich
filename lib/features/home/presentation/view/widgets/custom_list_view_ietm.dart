import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:flutter/material.dart';

class CustomListViewIetm extends StatelessWidget {
  const CustomListViewIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: const BoxDecoration(

        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.test),
        )
      ),
    );
  }
}
