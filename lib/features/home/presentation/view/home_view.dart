
import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:bookly_clean_arich/core/utiltes/styles_data.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/widgets/custom_list_view_ietm.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/widgets/feature_list_book.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),

    );
  }
}

