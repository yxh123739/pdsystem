import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/pages/auth/widget/button_switch.dart';
import 'package:pdsystem/pages/auth/widget/form_layout.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormLayout(
      accountContro: controller.accountContro,
      passwordContro: controller.passwordContro,
      type: PageType.login,
      onTap: controller.login,
      enableButton: true.obs,
    );
  }
}
