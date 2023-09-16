import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:flutter_pickers/style/picker_style.dart';
import 'package:get/get.dart';

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
            color: Colors.blueGrey,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.blueGrey,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Center(
              child: Text(
                selectedItem,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
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
              pickerStyle: PickerStyle(
                textSize: 20,
                backgroundColor: const Color(0xff232d37),
                textColor: Colors.white70,
                headDecoration: const BoxDecoration(
                  color: Color(0xff232d37),
                ),
                cancelButton: Container(),
              ),
            );
          },
          child: Icon(
            icon,
            color: Colors.blueGrey,
            size: 26,
          ),
        ),
      ],
    );
  }
}
