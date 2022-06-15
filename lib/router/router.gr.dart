// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../screen/welcome/welcome_screen.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    WelcomePage.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WelcomeScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '/welcom_screen', fullMatch: true),
        _i2.RouteConfig(WelcomePage.name, path: '/welcom_screen')
      ];
}

/// generated route for
/// [_i1.WelcomeScreen]
class WelcomePage extends _i2.PageRouteInfo<void> {
  const WelcomePage() : super(WelcomePage.name, path: '/welcom_screen');

  static const String name = 'WelcomePage';
}
