import 'package:get/get.dart';

import 'controller.dart';

class CircuitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CircuitController());
  }
}
