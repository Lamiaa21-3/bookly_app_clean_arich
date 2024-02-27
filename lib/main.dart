import 'package:bookly_clean_arich/core/utiltes/api_service.dart';
import 'package:bookly_clean_arich/core/utiltes/app_routers.dart';
import 'package:bookly_clean_arich/core/utiltes/simple_bloc_observer.dart';
import 'package:bookly_clean_arich/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_clean_arich/features/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_clean_arich/features/home/data/repoistories/home_repo_implen.dart';
import 'package:bookly_clean_arich/features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_arich/features/home/domain/use_cases/features_books_use_case.dart';
import 'package:bookly_clean_arich/features/home/domain/use_cases/newest_books_use_case.dart';
import 'package:bookly_clean_arich/features/home/pres/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_clean_arich/features/home/pres/manage/newest_book_cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';
import 'core/utiltes/functions/setup_service_locator.dart';

  Future <void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (
          context,
        ) {
          return FeaturedBookCubit(
            FetchFeatureUseCase(
             getIt.get<HomeRepoImpl>(),
            ),
          )..fetchFeatureBook();
        },),
        BlocProvider(
          create: (
            context,
            ) {
          return NewestBookCubit(
            FetchNewestBookUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          );
        },),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
