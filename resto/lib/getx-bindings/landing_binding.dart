import 'package:get/get.dart';
import 'package:resto/modules/landing/landing_controller.dart';

class LandingBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<LandingContoller>(LandingContoller());
  }

}