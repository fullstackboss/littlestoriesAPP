import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:littlestories/configs/app_router.dart';
import 'package:littlestories/configs/theme.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Mantiene la pantalla verticalmente
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      theme: AppThemeStories().getThemeApp(),
      routerConfig: routerStories,
      debugShowCheckedModeBanner: false,
    );
  }
}
