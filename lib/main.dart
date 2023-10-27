import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map_project/Page/GetStarted.dart';
import 'package:map_project/utils/our_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomThemes.lightTheme,
      darkTheme: CustomThemes.darkTheme,
      themeMode: ThemeMode.system,
      title: "Map",
      home: GetScreen(),
    );
  }
}
