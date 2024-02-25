import 'package:bookly_clean_arich/features/home/data/data_source/home_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


import '../../../features/home/data/data_source/home_local_data_source.dart';
import '../../../features/home/data/repoistories/home_repo_implen.dart';
import '../api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImplem(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
