import 'dart:async';

import 'package:get/get.dart';
import 'package:pdsystem/utils/date_util.dart';

import '../../db/data_model.dart';
import '../../db/db_helper.dart';

class PredictController extends GetxController {
  final time = '00:00:00'.obs;
  late Timer timer;

  final selectedOption = ['相电压', 'A相电压'].obs;
  List<DataModel> itemList = [];
  // 主选项
  Map<String, dynamic> options = {
    '相电压': ['A相电压', 'B相电压', 'C相电压'],
    '相电流': ['A相电流', 'B相电流', 'C相电流'],
    '功率': ['有功功率', '无功功率'],
    '双相电压': ['AB相电压', 'AC相电压', 'BC相电压'],
    '电能指标': ['电能指标'],
    '功率因数': ['功率因数']
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
    },
    '双相电压': {
      'A相-B相电压': 'uab',
      'A相-C相电压': 'uca',
      'B相-C相电压': 'ubc',
    },
    '电能指标': {
      '电能指标': 'epi',
    },
    '功率因数': {
      '功率因数': 'pf',
    },
  };

  @override
  void onInit() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time.value = DateTime.now().hms();
    });
    super.onInit();
    getModels();
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }

  changeOptin(List<String> option) {
    selectedOption.value = option;
    getModels();
  }

  getModels() async {
    // 获取模型列表
    var models = await DbHelper.queryAll();

    models.shuffle();
    models = models.sublist(0, 50);

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

    ///按时间的先后顺序排序，小时为主要排序，分钟为次要排序
    itemList.sort((a, b) {
      if (a.time > b.time) {
        return 1;
      } else if (a.time < b.time) {
        return -1;
      } else {
        return 0;
      }
    });

// 更新UI
    update(['energyList']);
  }

  double convertDateTimeToNumber(DateTime datetime) {
    return datetime.hour + datetime.minute / 60.0;
  }
}
