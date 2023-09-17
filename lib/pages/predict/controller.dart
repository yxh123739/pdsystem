import 'dart:async';

import 'package:get/get.dart';
import 'package:pdsystem/db/db_helper.dart';
import 'package:pdsystem/utils/date_util.dart';

import '../../db/table_data_model.dart';

class PredictController extends GetxController {
  final time = '00:00:00'.obs;
  late Timer timer;

  final selectedOption = ['电压', '一小时'].obs;
  final _timeList = [
    '一小时',
    '两小时',
    '三小时',
    '四小时',
    '五小时',
    '六小时',
    '七小时',
    '八小时',
    '九小时',
    '十小时',
    '十一小时',
    '十二小时'
  ];

  Map<String, dynamic> options = {};
  List<String> headerData = [
    '参数名称',
    '最新值',
    '预计更新时间',
    '最大值',
    '预计发生时间',
    '最小值',
    '预计发生时间',
    '平均值'
  ];

  ///用户选择的数据
  ///显示在表格中每个子项的最新值，最大值，最小值，平均值
  Map<String, TableDataModel> data = {};

  Map<String, Map<String, TableDataModel>> _dbData = {};

  @override
  void onInit() async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time.value = DateTime.now().hms();
    });

    options = {
      '电压': _timeList,
      '电流': _timeList,
      '功率': _timeList,
      '温湿度': _timeList,
    };
    await getData();

    super.onInit();
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }

  changeOption(List<String> option) async {
    data.clear();
    selectedOption.value = option;
    await getData();
    data.addAll(_dbData[selectedOption[0]]!);
    update();
  }

  getData() async {
    _dbData = await DbHelper.predictTableData(
        predict: _timeList.indexOf(selectedOption[1]) + 1);
    data.addAll(_dbData[selectedOption[0]]!);
    update();
  }
}
