import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookLogo extends StatelessWidget {
  const CustomBookLogo({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4/3.2,
      child: CachedNetworkImage(
        imageUrl: image,
      )
    );
  }
}
