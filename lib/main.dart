import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meals_app/bindings/controller_binding.dart';
import 'package:meals_app/view/screen/category_items_detail.dart';
import 'package:meals_app/view/screen/home_screen.dart';

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
   
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      routes: {
        "/": (context)=> HomeScreen(),
        "/category-detail":(context) => CategoryItemsDetailPage()
      },
    );
  }
}
