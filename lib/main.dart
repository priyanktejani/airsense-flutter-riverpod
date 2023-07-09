import 'package:airsense/src/resources/app_colors.dart';
import 'package:airsense/src/resources/app_texts.dart';
import 'package:airsense/src/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppTexts.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primary,
      ),
      routerConfig: appRouterConfig,
    );
  }
}
