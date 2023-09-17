import 'package:flutter/material.dart';
import 'package:flutter_pickers/pickers.dart';
import 'package:get/get.dart';
import 'package:pdsystem/widget/chart_layout.dart';

import '../../utils/style_ext.dart';
import '../../widget/box.dart';
import '../../widget/my_table.dart';
import 'controller.dart';

class PredictPage extends GetView<PredictController> {
  const PredictPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartLayout(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: Get.back,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            const Text(
              '数据预测',
              style: CustomStyle.bold26Black,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Center(
                  child: Obx(
                    () => Text(
                      '当前时间:${controller.time.value}',
                      style: CustomStyle.bold26Black.copyWith(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
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
          child: GetBuilder<PredictController>(
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
