import 'package:bookly_clean_arich/core/utiltes/custom_text_button.dart';
import 'package:flutter/material.dart';

class BookButtonReaction extends StatelessWidget {
  const BookButtonReaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 10,right: 10,top: 37),
      child:  Row(
        children: [
          Expanded(
            child: CustomTextButton(
              backGroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
              text: '19.9\$',
            ),
          ),
          Expanded(
            child: CustomTextButton(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                backGroundColor: Color(0xffef8262),
                textColor: Colors.white,
                text: 'Free Previous'),
          ),
        ],
      ),
    );
  }
}
