import 'package:get/get.dart';
import 'package:pdsystem/db/table_data_model.dart';

import '../../db/db_helper.dart';

class CircuitController extends GetxController {
  ///根据用户选择的类型如电压、电流、功率等，显示不同的数据

  List<String> options = [
    '电压',
    '电流',
    '功率',
    '温湿度',
  ];

  List<String> headerData = [
    '参数名称',
    '最新值',
    '更新',
    '最大值',
    '发生时间',
    '最小值',
    '发生时间',
    '平均值'
  ];

  ///用户选择的数据
  ///显示在表格中每个子项的最新值，最大值，最小值，平均值
  Map<String, TableDataModel> data = {};

  Map<String, Map<String, TableDataModel>> _dbData = {};

  ///用户选择的类型
  final selectedType = "电压".obs;

  @override
  void onInit() async {
    _dbData = await DbHelper.tableData();
    data.addAll(_dbData[selectedType.value]!);
    super.onInit();
    update();
  }

  onItemChange(String value) async {
    data.clear();
    selectedType.value = value;
    data.addAll(_dbData[selectedType.value]!);
    update();
  }
}
