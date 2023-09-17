import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:flutter_pickers/style/picker_style.dart';
import 'package:get/get.dart';
import 'package:pdsystem/utils/style_ext.dart';

class ChartPageTitle extends StatelessWidget {
  const ChartPageTitle({
    super.key,
    required this.dataList,
    required this.selectedItem,
    required this.title,
    this.onItemChange,
    this.icon = Icons.calendar_today_outlined,
  });

  final Function(String? value)? onItemChange;

  final List<String> dataList;

  final String selectedItem;

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: CustomStyle.bold26Black,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Center(
              child: Text(
                selectedItem,
                style: CustomStyle.bold26Black.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Pickers.showSinglePicker(
              context,
              data: dataList,
              onConfirm: (data, position) => onItemChange?.call(data),
              pickerStyle: CustomStyle.pickerStyle(context),
            );
          },
          child: Icon(
            icon,
            color: Colors.black,
            size: 23,
          ),
        ),
      ],
    );
  }
}
