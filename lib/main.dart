import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hodi/services/ThemePreferences.dart';
import 'package:hodi/services/account_services.dart';
import 'package:hodi/translations/codegen_loader.g.dart';

import 'app.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await ThemePreferences.init();
  await EasyLocalization.ensureInitialized();
  final langugage = await AccountServices().getAccountLanguage();
  runApp(EasyLocalization(
      path: "assets/translations",
      supportedLocales: const [Locale("en"), Locale("vi")],
      fallbackLocale: const Locale("en"),
      startLocale: langugage == "" ? null : Locale(langugage),
      assetLoader: const CodegenLoader(),
      child: const MyApp()));
}
