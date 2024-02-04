import 'package:bookly_clean_arich/features/home/presentation/view/search/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

import '../../home/widgets/best_seller_list_view_ietm.dart';
import 'custom_text_field.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(),
        Expanded(child: SearchListView())

      ],
    );
  }
}



