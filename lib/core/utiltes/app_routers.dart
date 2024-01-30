import 'package:bookly_clean_arich/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView(),
    ),
    GoRoute(path: '/homeView', builder: (context, state) => const HomeView(),
    ),
  ]);
}
