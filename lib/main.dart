import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/height_width_screen.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:flutter_getx/screens/languages_change_screen.dart';
import 'package:flutter_getx/screens/screen_one.dart';
import 'package:flutter_getx/screens/screen_two.dart';
import 'package:flutter_getx/utils/languages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      locale: const Locale("en", "US"),
      translations: Languages(),
      fallbackLocale: const Locale("en", "US"),
      getPages: [
        GetPage(
          name: "/",
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: "/screenOne",
          page: () => ScreenOne(),
        ),
        GetPage(
          name: "/screenTwo",
          page: () => const ScreenTwo(),
        ),
        GetPage(
          name: "/heightWidth",
          page: () => const HeightWidthScreen(),
        ),
        GetPage(
          name: "/language",
          page: () => const LanguagesChangeScreen(),
        ),
      ],
    );
  }
}
