import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes.dart';
import '../../../widget/box.dart';
import '../../../widget/title_text.dart';
import 'button_switch.dart';
import 'custom_button.dart';
import 'custom_field.dart';

class FormLayout extends StatelessWidget {
  const FormLayout({
    super.key,
    required this.accountContro,
    required this.passwordContro,
    required this.type,
    required this.onTap,
    this.onchanged,
    required this.enableButton,
  });
  final TextEditingController accountContro;
  final TextEditingController passwordContro;
  final PageType type;
  final VoidCallback onTap;
  final VoidCallback? onchanged;
  final RxBool enableButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  vBox(10),
                  titleText(),
                  vBox(25),
                  CustomField(
                    controller: accountContro,
                    hint: '请输入帐号',
                    obscure: false,
                    onChange: (_) => onchanged?.call(),
                  ),
                  vBox(10),
                  Visibility(
                    visible: type == PageType.register,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomField(
                            controller: TextEditingController(),
                            hint: '验证码 ',
                            obscure: false,
                          ),
                        ),
                        hBox(5),
                        const SizedBox(
                          height: 60,
                          child: CustomButton(
                            text: '获取验证码',
                            padding: EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  vBox(10),
                  CustomField(
                    controller: passwordContro,
                    hint: '请输入密码',
                    obscure: true,
                    onChange: (_) => onchanged?.call(),
                  ),
                  vBox(25),
                  Obx(
                    () => CustomButton(
                      text: type == PageType.login ? '登录' : '注册',
                      onTap: onTap,
                      enable: enableButton.value,
                    ),
                  ),
                  vBox(25),
                  ButtonSwitch(
                    type: type,
                    onPressed: () => Get.offAndToNamed(
                      type == PageType.login ? Routes.register : Routes.login,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
