import 'package:flutter/material.dart';
import 'package:littlestories/configs/app_router.dart';
import 'package:littlestories/configs/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemeStories().getThemeApp(),
      routerConfig: routerStories,
      debugShowCheckedModeBanner: false,
    );
  }
}
