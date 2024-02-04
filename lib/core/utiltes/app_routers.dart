import 'package:bookly_clean_arich/features/home/presentation/view/book_details/book_details_view.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/home/home_view.dart';
import 'package:bookly_clean_arich/features/home/presentation/view/search/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/splash/splash_view.dart';

abstract class AppRouters {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookView = '/bookView';
  static const kSearchView = '/searcView';

  static final router = GoRouter(routes: [
    GoRoute(path:kSplashView , builder: (context, state) => const SplashView(),
    ),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView(),
    ),
    GoRoute(path:kBookView , builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(path: kSearchView,builder: (context,state) => const SearchView(),),
  ]);
}
