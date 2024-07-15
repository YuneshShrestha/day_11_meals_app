import 'package:get/get.dart';
import 'package:meals_app/controller/category_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
  }
}
