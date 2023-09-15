import 'package:get/get.dart';

import 'controller.dart';

class PredictBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PredictController());
  }
}
