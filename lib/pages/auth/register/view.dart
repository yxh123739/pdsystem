import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/pages/auth/widget/button_switch.dart';
import 'package:pdsystem/pages/auth/widget/form_layout.dart';

import 'controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormLayout(
      accountContro: controller.accountContro,
      passwordContro: controller.passwordContro,
      type: PageType.register,
      onTap: controller.register,
      enableButton: controller.enable,
      onchanged: controller.onchange,
    );
  }
}
