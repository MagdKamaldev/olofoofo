import 'package:circle_sync/core/networks/api_services.dart';
import 'package:circle_sync/core/networks/dio_factory.dart';
import 'package:circle_sync/features/add_post/data/apis/add_post_api_services.dart';
import 'package:circle_sync/features/add_post/data/repos/add_post_repo.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:circle_sync/features/home/data/apis/home_api_service.dart';
import 'package:circle_sync/features/home/data/repos/home_repo.dart';
import 'package:circle_sync/features/home/logic/home_cubit.dart';
import 'package:circle_sync/features/login/data/repos/login_repo.dart';
import 'package:circle_sync/features/login/logic/cubit/login_cubit.dart';
import 'package:circle_sync/features/profile/data/repos/profile_repo.dart';
import 'package:circle_sync/features/profile/logic/cubit/proflie_cubit.dart';
import 'package:circle_sync/features/signup/data/repos/sign_up_repo.dart';
import 'package:circle_sync/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio =  DioFactory.getDio();

  //Dio & ApiService
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

 //login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt()));

  //signUp
  getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(()=>SignUpCubit(getIt()));

  //home
  getIt.registerLazySingleton<HomeApiService>(()=>HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(()=>HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(()=>HomeCubit(getIt()));

  //Profile
  getIt.registerLazySingleton<ProfileRepo>(()=>ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(()=>ProfileCubit(getIt()));

  //create post 
  getIt.registerLazySingleton<AddPostApiService>(()=>AddPostApiService(dio));
  getIt.registerLazySingleton<CreatePostRepo>(()=>CreatePostRepo(getIt()));
  getIt.registerFactory<AddPostCubit>(()=>AddPostCubit(getIt()));
  
  
}
