import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/pages/temp/widget/title.dart';
import 'package:pdsystem/widget/box.dart';
import 'package:pdsystem/widget/chart_layout.dart';
import 'package:pdsystem/widget/my_table.dart';

import 'controller.dart';

class CircuitPage extends GetView<CircuitController> {
  const CircuitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartLayout(
      children: [
        Obx(() {
          return ChartPageTitle(
            dataList: controller.options,
            selectedItem: controller.selectedType.value,
            title: '实时数据',
            onItemChange: (value) => controller.onItemChange(value!),
            icon: Icons.settings,
          );
        }),
        vBox(50),
        Expanded(
          child: GetBuilder<CircuitController>(
            builder: (_) {
              return controller.data.isEmpty
                  ? const Center(
                      child: Text(
                        '加载中......',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
                  : MyTable(
                      data: controller.data,
                      headerData: controller.headerData,
                    );
            },
          ),
        ),
      ],
    );
  }
}
