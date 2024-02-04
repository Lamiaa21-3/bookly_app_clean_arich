import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:flutter/material.dart';

class CustomBookLogo extends StatelessWidget {
  const CustomBookLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4/3.2,
      child: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.test),
          )
        ),
      ),
    );
  }
}
