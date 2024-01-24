import 'package:flutter/material.dart';

import '../../../../../core/utiltes/asset_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 25),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 16,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),),
        ],
      ),
    );

  }
}
