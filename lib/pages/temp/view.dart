import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/widget/box.dart';
import 'package:pdsystem/widget/chart_layout.dart';
import 'package:pdsystem/widget/m_line_chart.dart';

import 'controller.dart';
import 'widget/title.dart';

class TempPage extends GetView<TempController> {
  const TempPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartLayout(
      children: [
        Obx(() => ChartPageTitle(
              onDate: (value) => controller.changeDate(value!),
              dateList: controller.dateList,
              selectedDate: controller.selectedDate.value,
            )),
        vBox(15),
        Obx(() {
          return controller.selectedDate.isNotEmpty
              ? Expanded(
                  child: Column(
                    children: [
                      _titleText('温度'),
                      vBox(15),
                      Expanded(
                        child: GetBuilder<TempController>(
                          builder: (_) {
                            return controller.temps.isNotEmpty
                                ? MyLineChart(
                                    datas: controller.temps,
                                    unit: '°C',
                                  )
                                : Container();
                          },
                        ),
                      ),
                      vBox(50),
                      _titleText('湿度'),
                      vBox(15),
                      Expanded(
                        child: GetBuilder<TempController>(
                          builder: (_) {
                            return controller.temps.isNotEmpty
                                ? MyLineChart(
                                    datas: controller.hums,
                                    unit: '%',
                                  )
                                : Container();
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : Container();
        }),
      ],
    );
  }

  _titleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
