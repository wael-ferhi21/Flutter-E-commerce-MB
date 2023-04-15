import 'package:get/get.dart';
import 'package:marqueblanche/Controllers/homecontroller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
