import 'package:bookly_clean_arich/features/home/presentation/view/book_details/book_details_view.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/home/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/splash/splash_view.dart';

abstract class AppRouters {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView(),
    ),
    GoRoute(path: '/homeView', builder: (context, state) => const HomeView(),
    ),
    GoRoute(path: '/bookView', builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
