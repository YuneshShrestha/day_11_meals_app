import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/category_controller.dart';

class CategoryItemsDetailPage extends StatelessWidget {
  const CategoryItemsDetailPage({
    super.key,
  });
  // final String categoryName;
  // static bool _isFirstTime = true;
  @override
  Widget build(BuildContext context) {
    final categoryName = ModalRoute.of(context)!.settings.arguments as String;
    final controller = Get.find<CategoryController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.getItemsByCategories(categoryName);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Obx(
        () {
          var meals = controller.categoryItemsModel.value.meals;

          return controller.loading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: meals.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      title: Text(meals[index].strMeal ?? ""),
                    );
                  });
        },
      ),
    );
  }
}
