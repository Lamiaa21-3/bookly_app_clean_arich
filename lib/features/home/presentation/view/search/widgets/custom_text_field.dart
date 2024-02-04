import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                )
            ),
            hintText: 'Search',
            suffixIcon: IconButton(onPressed: (){},icon:  Icon(Icons.search),)
        ),
      ),
    );
  }
}