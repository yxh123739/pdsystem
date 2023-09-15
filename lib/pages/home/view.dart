import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdsystem/res/constants.dart';
import 'package:pdsystem/res/custom_icon.dart';
import 'package:pdsystem/routes.dart';
import 'package:pdsystem/widget/box.dart';

import 'controller.dart';
import 'widget/function_button.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final machine = '回路选择'.obs;
    List<String> machines = ["浓缩泵A", "吸收泵A", "净化水泵A", "工艺水泵A", "氧化风机A"];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              gradientFirst.withOpacity(0.8),
              gradientSecond.withOpacity(0.9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            const TopArea(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: const BoxDecoration(
                  color: Color(0xfffbfcff),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '操作选项',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            machine.value = '回路选择';
                          },
                          child: const Icon(
                            Icons.loop,
                            size: 30,
                            color: Colors.blueGrey,
                          ),
                        )
                      ],
                    ),
                    vBox(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FunctionButton(
                          icon: CustomIcon.temperatire,
                          text: '温湿数据',
                          onPressed: () => Get.toNamed(Routes.temp),
                        ),
                        Obx(
                          () => FunctionButton(
                            icon: Icons.electrical_services,
                            text: machine.value,
                            onPressed: () {
                              if (machine.value == machines[0]) {
                                Get.toNamed(Routes.circuit);
                              } else {
                                Get.defaultDialog(
                                  title: '回路选择',
                                  titleStyle: const TextStyle(fontSize: 25),
                                  content: SizedBox(
                                    height: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: List.generate(
                                        machines.length,
                                        (index) {
                                          return Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: GestureDetector(
                                              onTap: () {
                                                machine.value = machines[index];
                                                Get.back();
                                              },
                                              child: Text(
                                                '${machines[index]}${index == 0 ? "" : "(无数据)"}',
                                                style: TextStyle(
                                                  color: index == 0
                                                      ? Colors.black
                                                      : Colors.grey,
                                                  fontSize: 20,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    vBox(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FunctionButton(
                          icon: Icons.history_outlined,
                          text: '历史数据',
                          onPressed: () => Get.toNamed(Routes.history),
                        ),
                        FunctionButton(
                          icon: Icons.data_exploration_outlined,
                          text: '数据预测',
                          onPressed: () => Get.toNamed(Routes.predict),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopArea extends StatelessWidget {
  const TopArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icons(),
          vBox(20),
          Text(
            '华润电力温州电厂脱',
            style: TextStyle(
              color: Colors.grey[300],
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          vBox(5),
          Text(
            '硫项目现场终端',
            style: TextStyle(
              color: Colors.grey[300],
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          vBox(30),
          Row(
            children: [
              Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.grey[300],
                      size: 20,
                    ),
                    hBox(5),
                    Text(
                      '实时反馈',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              hBox(20),
              Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.handyman_outlined,
                      color: Colors.grey[300],
                      size: 20,
                    ),
                    hBox(5),
                    Text(
                      '全方位数据监测',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row icons() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: Colors.grey[400],
            ),
          ),
          Icon(
            Icons.info_outline,
            size: 22,
            color: Colors.grey[400],
          ),
        ],
      );
}
