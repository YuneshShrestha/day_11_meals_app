import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/model/category_items_model.dart';
import 'package:meals_app/model/category_model.dart';
import 'package:meals_app/services/category_service.dart';

class CategoryController extends GetxController {
  var categoryModel = CategoryListModel(categories: []).obs;
  var categoryItems = CategoryItems(meals: []).obs;
  var loading = false.obs;
  getCategories() async {
    try {
      loading.value = true;
      var data = await CategoryService.fetchCategory();
      // print(data);
      if (data != null) {
        categoryModel.value = data;
      }
    } catch (e) {
      print(e);
      // Get.snackbar("Error", e.toString());
    } finally {
      loading.value = false;
    }
  }

  getCategoryItems(String categoryName) async {
    try {
      loading.value = true;
      var data = await CategoryService.fetchItemsByCategories(categoryName);
      
      if (data != null) {
        categoryItems.value = data;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      loading.value = false;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCategories();
  }
}
