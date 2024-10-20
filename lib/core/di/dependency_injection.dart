import 'package:circle_sync/core/networks/api_services.dart';
import 'package:circle_sync/core/networks/dio_factory.dart';
import 'package:circle_sync/features/home/cubit/home_cubit.dart';
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
   getIt.registerFactory<HomeCubit>(()=>HomeCubit());

  //Profile
  getIt.registerLazySingleton<ProfileRepo>(()=>ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(()=>ProfileCubit(getIt()));
  
  
}
