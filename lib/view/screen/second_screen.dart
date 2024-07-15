import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/category_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  // final String categoryName;

  @override
  Widget build(BuildContext context) {
    String categoryName = ModalRoute.of(context)?.settings.arguments as String;
    final controller = Get.find<CategoryController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
       controller.getCategoryItems(categoryName);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Obx(() {
        final meals = controller.categoryItems.value.meals;
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return Card(
                child: ListTile(
                  title: Text(meals[index].strMeal ?? "No Data"),
                ),
              );
            });
      }),
    );
  }
}
