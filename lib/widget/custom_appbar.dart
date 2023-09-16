import 'package:flutter/material.dart';
import 'package:pdsystem/widget/title_text.dart';

AppBar customAppbar({
  required BuildContext context,
  bool back = false,
  List<Widget>? actions,
}) {
  return AppBar(
    leading: back ? const BackButton() : null,
    centerTitle: true,
    title: titleText(color: Colors.white),
    backgroundColor: Colors.transparent,
    actions: actions,
    elevation: 0,
  );
}
