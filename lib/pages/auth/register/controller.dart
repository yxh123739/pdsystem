import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/routes.dart';

import '../../../db/db_helper.dart';
import '../../../utils/toastutil.dart';

class RegisterController extends GetxController {
  final accountContro = TextEditingController();
  final passwordContro = TextEditingController();
  final enable = false.obs;

  register() async {
    if (!enable.value) return;
    await DbHelper.register(
      phone: accountContro.text,
      password: passwordContro.text,
      onComplete: (result) {
        if (result) {
          enable.value = false;
          ToastUtil.showToast('注册成功');
          Get.offAndToNamed(Routes.login);
        } else {
          ToastUtil.showToast('用户已存在');
          accountContro.clear();
          passwordContro.clear();
        }
      },
    );
  }

  onchange() {
    enable.value = accountContro.text.isNotEmpty &&
        passwordContro.text.isNotEmpty &&
        GetUtils.isPhoneNumber(accountContro.text);
  }
}
