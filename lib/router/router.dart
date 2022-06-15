import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hodi/router/app_router.dart';
import 'package:hodi/screen/welcome/welcome_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: WelcomeScreen,
        name: "WelcomePage",
        initial: true,
        path: AppRoutes.welcomeScreen),
  ],
)
class $AppRouter {}

Widget slideBottomToTop(context, animation, secondaryAnimation, child) {
  const begin = Offset(0.0, 1.0);
  const end = Offset.zero;
  const curve = Curves.fastLinearToSlowEaseIn;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}
