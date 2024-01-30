import 'package:bookly_clean_arich/features/home/presentation/view/book_details/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
