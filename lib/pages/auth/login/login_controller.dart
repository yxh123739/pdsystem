import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/utils/toastutil.dart';

import '../../../db/db_helper.dart';
import '../../../routes.dart';

class LoginController extends GetxController {
  final accountContro = TextEditingController();
  final passwordContro = TextEditingController();

  login() async {
    if (accountContro.text.isEmpty ||
        passwordContro.text.isEmpty ||
        GetUtils.isPhoneNumber(accountContro.text) == false) {
      ToastUtil.showToast('请正确输入信息');
      return;
    }
    final result = await DbHelper.login(
        phone: accountContro.text, password: passwordContro.text);
    if (result) {
      Get.offAllNamed(Routes.function);
      return;
    }
    ToastUtil.showToast('账号或密码错误');
  }
}
