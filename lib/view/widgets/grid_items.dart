import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/category_controller.dart';

class GridItemsWidget extends StatelessWidget {
  const GridItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController());
    var controller = Get.find<CategoryController>();
    return Obx(() {
      
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: controller.categoryModel.value.categories.length,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
                child: Text(controller
                        .categoryModel.value.categories[index].strCategory ??
                    "")),
          );
        },
      );
    });
  }
}
