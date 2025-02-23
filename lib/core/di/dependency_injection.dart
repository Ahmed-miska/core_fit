import 'package:core_fit/core/networking/api_service.dart';
import 'package:core_fit/features/auth/forget_password/data/apis/forget_password_services.dart';
import 'package:core_fit/features/auth/forget_password/data/repo/forget_password_repo.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:core_fit/features/auth/login/data/repos/login_repo.dart';
import 'package:core_fit/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:core_fit/features/auth/sign_up/data/apis/sign_up_api_service.dart';
import 'package:core_fit/features/auth/sign_up/data/repos/signup_repo.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:core_fit/features/market/market_store/data/apis/category_api_service.dart';
import 'package:core_fit/features/market/market_store/data/apis/market_api_service.dart';
import 'package:core_fit/features/market/market_store/data/repo/category_repo.dart';
import 'package:core_fit/features/market/market_store/data/repo/market_repo.dart';
import 'package:core_fit/features/market/products/data/apis/products_api_service.dart';
import 'package:core_fit/features/market/products/data/repos/products_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignUpApiService>(() => SignUpApiService(dio));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerLazySingleton<SignupCubit>(() => SignupCubit(getIt())..getGovernorates());

  // forget password
  getIt.registerLazySingleton<ForgetPasswordServices>(() => ForgetPasswordServices(dio));
  getIt.registerLazySingleton<ForgetPasswordRepo>(() => ForgetPasswordRepo(getIt()));
  getIt.registerFactory<ForgetPasswordCubit>(() => ForgetPasswordCubit(getIt()));

  // category
  getIt.registerLazySingleton<CategoryApiService>(() => CategoryApiService(dio));
  getIt.registerLazySingleton<CategoryRepo>(() => CategoryRepo(getIt()));

  // market
  getIt.registerLazySingleton<MarketApiService>(() => MarketApiService(dio));
  getIt.registerLazySingleton<MarketRepo>(() => MarketRepo(getIt()));

  // products
  getIt.registerLazySingleton<ProductsApiService>(() => ProductsApiService(dio));
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
}
