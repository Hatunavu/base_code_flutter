import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hodi/api/api_client/api_client.dart';
import 'package:hodi/api/dio_di.dart';
import 'package:hodi/app_cubit.dart';
import 'package:hodi/shared/widget/button/toast.dart';

final getIt = GetIt.instance;
void configureDependencies() {
  getIt.registerLazySingleton<Dio>(() => _DioDi().dio);
  getIt.registerLazySingleton<IToast>(() => CustomBotToast());

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(
        getIt.get<Dio>(),
        baseUrl: "https://reqres.in",
      ));
  getIt.registerLazySingleton<AppCubit>(() => AppCubit());
  // getIt.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}

class _DioDi extends DioDi {}
