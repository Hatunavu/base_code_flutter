import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hodi/app_cubit.dart';
import 'package:hodi/router/router.gr.dart';
import 'package:hodi/theme/theme_cubit.dart';
import 'package:hodi/theme/theme_state.dart';

import 'injection.dart';

final _appRouter = AppRouter();
final _botToastBuilder = BotToastInit();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (BuildContext context, ThemeState state) {
          return ScreenUtilInit(
            builder: (_) => MaterialApp.router(
              title: 'Hodi',
              // theme: lightThemeData(context),
              // darkTheme: darkThemeData(context),
              // themeMode: ThemeServices().theme,
              theme: state.themeData,
              routeInformationParser: _appRouter.defaultRouteParser(),
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              locale: context.locale,
              routerDelegate: AutoRouterDelegate(
                _appRouter,
                navigatorObservers: () => [
                  AutoRouteObserver(),
                ],
              ),
              builder: (context, widget) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => getIt.get<AppCubit>()),
                ],
                child: _botToastBuilder(context, widget),
              ),
            ),
          );
        }));
  }
}
