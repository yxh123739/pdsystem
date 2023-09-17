import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:get/get.dart';
import 'package:pdsystem/pages/temp/widget/title.dart';
import 'package:pdsystem/widget/box.dart';
import 'package:pdsystem/widget/chart_layout.dart';
import 'package:pdsystem/widget/m_line_chart.dart';

import '../../utils/style_ext.dart';
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
              '数据类别',
              style: CustomStyle.bold26Black,
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
                    style: CustomStyle.bold26Black.copyWith(fontSize: 18),
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
                    style: CustomStyle.bold26Black.copyWith(fontSize: 18),
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
                    controller.changeOption(p.cast<String>());
                  },
                  pickerStyle: CustomStyle.pickerStyle(context),
                );
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
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
