import 'package:get/get.dart';
import 'package:pdsystem/db/data_model.dart';

import '../../db/db_helper.dart';

class HistoryController extends GetxController {
  final selectedOption = ['相电压', 'A相电压'].obs;

  // 主选项
  Map<String, dynamic> options = {
    '相电压': ['A相电压', 'B相电压', 'C相电压'],
    '相电流': ['A相电流', 'B相电流', 'C相电流'],
    '功率': ['有功功率', '无功功率', '功率因数'],
    '双相电压': ['AB相电压', 'AC相电压', 'BC相电压'],
    '温湿度': ['温度', '湿度'],
  };

  ///筛选数据存储
  Map<String, dynamic> dataMap = {
    '相电压': {
      'A相电压': 'ua',
      'B相电压': 'ub',
      'C相电压': 'uc',
    },
    '相电流': {
      'A相电流': 'ia',
      'B相电流': 'ib',
      'C相电流': 'ic',
    },
    '功率': {
      '有功功率': 'p',
      '无功功率': 'q',
      '功率因数': 'pf',
    },
    '双相电压': {
      'AB相电压': 'uab',
      'AC相电压': 'uca',
      'BC相电压': 'ubc',
    },
    '温湿度': {
      '温度': 'temperature',
      '湿度': 'humidity',
    },
  };

  List<String> dateList = [];
  final selectedDate = ''.obs;

  List<DataModel> itemList = [];

  @override
  void onInit() async {
    final res = await DbHelper.getDates();
    dateList = res;
    update(['dateList']);
    selectedDate.value = dateList[0];
    getModels();
    super.onInit();
  }

  getModels() async {
    // 获取模型列表
    final models = await DbHelper.getEnergiesByDate(
        date: DateTime.parse(selectedDate.value));

// 获取要查询的字段名
    final fieldName = dataMap[selectedOption[0]][selectedOption[1]];

// 转换为 DataModel
    itemList = models.map((model) {
      Map<String, dynamic> map = model.toJson();
      return DataModel(
        time: convertDateTimeToNumber(model.collectTime!),
        value: map[fieldName],
      );
    }).toList();

// 更新UI
    update(['energyList']);
  }

  changeDate(String date) {
    selectedDate.value = date;
    getModels();
  }

  changeOption(List<String> option) {
    selectedOption.value = option;
    getModels();
  }

  double convertDateTimeToNumber(DateTime datetime) {
    return datetime.hour + datetime.minute / 60.0;
  }
}
