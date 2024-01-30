import 'package:bookly_clean_arich/constants.dart';
import 'package:bookly_clean_arich/core/utiltes/asset_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../home/presentation/view/home/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationSliding;

  @override
  void initState() {
    initeSlidingInimation();
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push('/homeView');
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  void initeSlidingInimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animationSliding =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
          builder: (context, _) {
            return SlideTransition(
              position: animationSliding,
              child: const Text("Free Books"),
            );
          },
          animation: animationSliding,
        ),
      ],
    );
  }
}
