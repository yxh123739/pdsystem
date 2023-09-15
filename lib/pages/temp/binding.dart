import 'package:get/get.dart';

import 'controller.dart';

class TempBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TempController());
  }
}
