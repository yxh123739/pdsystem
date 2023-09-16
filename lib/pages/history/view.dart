import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:flutter_pickers/style/picker_style.dart';
import 'package:get/get.dart';
import 'package:pdsystem/pages/temp/widget/title.dart';
import 'package:pdsystem/widget/box.dart';
import 'package:pdsystem/widget/chart_layout.dart';
import 'package:pdsystem/widget/m_line_chart.dart';

import 'controller.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartLayout(
      children: [
        Obx(
          () => ChartPageTitle(
            onItemChange: (value) => controller.changeDate(value!),
            dataList: controller.dateList,
            selectedItem: controller.selectedDate.value,
            title: '采集日期',
          ),
        ),
        vBox(10),
        Row(
          children: [
            const Text(
              '电力类别',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            hBox(15),
            Obx(() => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    controller.selectedOption[0],
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
            hBox(8),
            Obx(() => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    controller.selectedOption[1],
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {
                Pickers.showMultiLinkPicker(
                  context,
                  data: controller.options,
                  columeNum: 2,
                  suffix: ['', '', '', '', ''],
                  onConfirm: (List p, List<int> position) {
                    controller.changeOptin(p.cast<String>());
                  },
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
              icon: const Icon(
                Icons.settings,
                color: Colors.blueGrey,
                size: 25,
              ),
            ),
          ],
        ),
        vBox(20),
        Expanded(
          child: GetBuilder<HistoryController>(
              id: 'energyList',
              builder: (_) {
                return controller.itemList.isNotEmpty
                    ? MyLineChart(
                        datas: controller.itemList,
                        unit: '',
                      )
                    : Container();
              }),
        ),
      ],
    );
  }
}
