import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getxmvvm/getxLocalization/languages.dart';
import 'package:getxmvvm/view/splash_screen.dart';
import 'res/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: const Locale('en_US'),
      fallbackLocale: const Locale('en_Us'),
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
