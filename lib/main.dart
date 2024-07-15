import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/binding/controller_binding,.dart';
import 'package:meals_app/view/screen/home_screen.dart';
import 'package:meals_app/view/screen/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "/second_screen": (context) => SecondScreen(),
      },
     initialBinding: ControllerBinding(),
    );
  }
}
