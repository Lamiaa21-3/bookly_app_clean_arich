import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Image.asset(AssetsData.logo),
      ],
    );
  }
}
