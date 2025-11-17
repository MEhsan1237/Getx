import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/height_screen.dart';
import 'package:getx/screens/local_screen.dart';
import 'package:getx/screens/one_screen.dart';
import 'package:getx/screens/three_screen.dart';
import 'package:getx/screens/translation/languages_class.dart';
import 'package:getx/screens/two_screen.dart';
import 'package:getx/state_management/counter_screen.dart';
import 'package:getx/state_management/image_screen.dart';
import 'package:getx/state_management/notification_screen.dart';
import 'package:getx/state_management/opacity_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      translations: Languages(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ImageScreen(),
      getPages: [
        GetPage(name: "/", page:()=> OneScreen()),
        GetPage(name: "/twoScreen", page:()=> TwoScreen()),
        GetPage(name: "/threeScreen", page:()=> ThreeScreen())
      ],
    );
  }
}


