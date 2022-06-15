import 'package:dio/dio.dart';
import 'package:hodi/api/interceptors/auth_interceptors.dart';
import 'package:hodi/app_cubit.dart';
import 'package:hodi/injection.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioDi {
  Dio get dio {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 5).inMilliseconds;
    dio.options.receiveTimeout = const Duration(seconds: 5).inMilliseconds;
    dio.interceptors.add(AuthInterceptor(getIt.get<AppCubit>()));
    // dio.interceptors.add(AuthInterceptor(getIt.get<AppCubit>()));
    //
    // dio.interceptors.add(MessageErrorInterceptor());
    // dio.interceptors.add(BadNetworkErrorInterceptor());
    // dio.interceptors.add(UnauthorizedErrorInterceptor());
    // dio.interceptors.add(InternalServerErrorInterceptor());
    // dio.interceptors.add(AuthIntercepßtor());
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90));

    return dio;
  }
}
