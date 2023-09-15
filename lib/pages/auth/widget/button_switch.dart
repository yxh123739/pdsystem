import 'package:flutter/material.dart';

import '../../../widget/box.dart';

enum PageType {
  login,
  register,
}

class ButtonSwitch extends StatelessWidget {
  const ButtonSwitch({
    super.key,
    required this.type,
    required this.onPressed,
  });
  final PageType type;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          type == PageType.login ? '还没有帐号？' : '已有帐号',
          style: TextStyle(color: Colors.grey[700]),
        ),
        hBox(8),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            type == PageType.login ? '帐号注册' : '去登录',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
