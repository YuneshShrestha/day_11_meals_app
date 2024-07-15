import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:meals_app/model/category_model.dart';
import 'package:meals_app/utils/api.dart';

class CategoryService {
  static fetchCategory() async {
    try {
      // Json Data
      final jsonData = await Api.dio.get("categories.php");
      // Map Data
      if (jsonData.statusCode == 200) {
        final decodedData = jsonDecode(jsonData.toString());

        // Model -> Chef
        var categoryListModel = CategoryListModel.fromJson(decodedData);
        print(categoryListModel);
        return categoryListModel;
      } else {
        print("Error");
        // Get.snackbar("Error", jsonData.statusMessage.toString());
        return null;
      }
    } catch (e) {
      print(e);
      // Get.snackbar("Error", e.toString());
      return null;
    }
  }
}
