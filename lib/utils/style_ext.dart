import 'package:flutter/material.dart';
import 'package:flutter_pickers/style/picker_style.dart';

class CustomStyle {
  static const bold26Black = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static PickerStyle pickerStyle(BuildContext context) => PickerStyle(
        textSize: 20,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        headDecoration: const BoxDecoration(
          color: Colors.white,
        ),
        cancelButton: Container(),
        context: context,
      );
}
