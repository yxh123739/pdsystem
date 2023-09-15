import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../widget/box.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.icon,
  });
  final String text;
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 160,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: const Offset(-5, 5),
              color: gradientSecond.withOpacity(0.8),
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.blueGrey,
            ),
            vBox(8),
            Text(
              text,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
