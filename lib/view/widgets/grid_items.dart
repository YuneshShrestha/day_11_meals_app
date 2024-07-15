import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/category_controller.dart';

class GridItemsWidget extends StatelessWidget {
  const GridItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<CategoryController>();
    return Obx(() {
      var categories = controller.categoryModel.value.categories;
      var isLoading = controller.loading.value;
      return isLoading
          ? const Center(child: LinearProgressIndicator())
          : GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/category-detail',
                      arguments: categories[index].strCategory,
                    );
                  },
                  child: Card(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (categories[index].strCategoryThumb != null)
                          FadeInImage(
                            placeholder: const AssetImage("asset/no_image.jpg"),
                            image: NetworkImage(controller.categoryModel.value
                                .categories[index].strCategoryThumb!),
                          ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(categories[index].strCategory ?? "")),
                      ],
                    ),
                  ),
                );
              },
            );
    });
  }
}
