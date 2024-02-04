
import 'package:bookly_clean_arich/features/search/widgets/search_list_view.dart';
import 'package:flutter/material.dart';


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



