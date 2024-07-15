import 'package:get/get.dart';
import 'package:meals_app/model/category_model.dart';
import 'package:meals_app/services/category_service.dart';

class CategoryController extends GetxController {
  var categoryModel = CategoryListModel(categories: []).obs;
  getCategories() async{
    try {
      var data = await CategoryService.fetchCategory();
      // print(data);
      if (data != null) {
        categoryModel.value = data;
      }
    } catch (e) {
      print(e);
      // Get.snackbar("Error", e.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCategories();
  }
}
