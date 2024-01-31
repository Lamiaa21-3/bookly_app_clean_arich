import 'package:bookly_clean_arich/core/utiltes/styles_data.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
      required this.backGroundColor,
      required this.textColor, this.borderRadius, required this.text})
      : super(key: key);
  final Color backGroundColor;
  final String text;
  final Color textColor;
   final BorderRadius ? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? const BorderRadius.only(
              topLeft: Radius.circular(12),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          '$text',
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
