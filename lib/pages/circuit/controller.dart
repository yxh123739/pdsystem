import 'package:get/get.dart';
import 'package:pdsystem/db/table_data_model.dart';
import 'package:pdsystem/utils/date_util.dart';

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

  ///用户选择的类型
  final selectedType = "电压".obs;
  @override
  void onInit() async {
    super.onInit();
    await getData();
    update();
  }

  onItemChange(String value) async {
    data.clear();
    selectedType.value = value;
    await getData();
    update();
  }

  getData() async {
    switch (selectedType.value) {
      case '电压':
        final latestUa = await DbHelper.latest();
        final maxUa = await DbHelper.maxUa();
        final minUa = await DbHelper.minUa();
        final avgUa = await DbHelper.avgUa();
        data['A相电压'] = TableDataModel(
          latestValue: latestUa.ua!,
          latestCollectTime: latestUa.collectTime!.convertDate(),
          maxValue: maxUa.ua!,
          maxCollectTime: maxUa.collectTime!.convertDate(),
          minValue: minUa.ua!,
          minCollectTime: minUa.collectTime!.convertDate(),
          avgValue: avgUa,
        );
        final latestUb = await DbHelper.latest();
        final maxUb = await DbHelper.maxUb();
        final minUb = await DbHelper.minUb();
        final avgUb = await DbHelper.avgUb();
        data['B相电压'] = TableDataModel(
          latestValue: latestUb.ub!,
          latestCollectTime: latestUb.collectTime!.convertDate(),
          maxValue: maxUb.ub!,
          maxCollectTime: maxUb.collectTime!.convertDate(),
          minValue: minUb.ub!,
          minCollectTime: minUb.collectTime!.convertDate(),
          avgValue: avgUb,
        );
        final latestUc = await DbHelper.latest();
        final maxUc = await DbHelper.maxUc();
        final minUc = await DbHelper.minUc();
        final avgUc = await DbHelper.avgUc();
        data['C相电压'] = TableDataModel(
          latestValue: latestUc.uc!,
          latestCollectTime: latestUc.collectTime!.convertDate(),
          maxValue: maxUc.uc!,
          maxCollectTime: maxUc.collectTime!.convertDate(),
          minValue: minUc.uc!,
          minCollectTime: minUc.collectTime!.convertDate(),
          avgValue: avgUc,
        );
        final latestUab = await DbHelper.latest();
        final maxUab = await DbHelper.maxUab();
        final minUab = await DbHelper.minUab();
        final avgUab = await DbHelper.avgUab();
        data['AB相电压'] = TableDataModel(
          latestValue: latestUab.uab!,
          latestCollectTime: latestUab.collectTime!.convertDate(),
          maxValue: maxUab.uab!,
          maxCollectTime: maxUab.collectTime!.convertDate(),
          minValue: minUab.uab!,
          minCollectTime: minUab.collectTime!.convertDate(),
          avgValue: avgUab,
        );
        final latestUbc = await DbHelper.latest();
        final maxUbc = await DbHelper.maxUbc();
        final minUbc = await DbHelper.minUbc();
        final avgUbc = await DbHelper.avgUbc();
        data['BC相电压'] = TableDataModel(
          latestValue: latestUbc.ubc!,
          latestCollectTime: latestUbc.collectTime!.convertDate(),
          maxValue: maxUbc.ubc!,
          maxCollectTime: maxUbc.collectTime!.convertDate(),
          minValue: minUbc.ubc!,
          minCollectTime: minUbc.collectTime!.convertDate(),
          avgValue: avgUbc,
        );
        final latestUca = await DbHelper.latest();
        final maxUca = await DbHelper.maxUca();
        final minUca = await DbHelper.minUca();
        final avgUca = await DbHelper.avgUca();
        data['CA相电压'] = TableDataModel(
          latestValue: latestUca.uca!,
          latestCollectTime: latestUca.collectTime!.convertDate(),
          maxValue: maxUca.uca!,
          maxCollectTime: maxUca.collectTime!.convertDate(),
          minValue: minUca.uca!,
          minCollectTime: minUca.collectTime!.convertDate(),
          avgValue: avgUca,
        );
        break;
      case '电流':
        final latestIa = await DbHelper.latest();
        final maxIa = await DbHelper.maxIa();
        final minIa = await DbHelper.minIa();
        final avgIa = await DbHelper.avgIa();
        data['A相电流'] = TableDataModel(
          latestValue: latestIa.ia!,
          latestCollectTime: latestIa.collectTime!.convertDate(),
          maxValue: maxIa.ia!,
          maxCollectTime: maxIa.collectTime!.convertDate(),
          minValue: minIa.ia!,
          minCollectTime: minIa.collectTime!.convertDate(),
          avgValue: avgIa,
        );
        final latestIb = await DbHelper.latest();
        final maxIb = await DbHelper.maxIb();
        final minIb = await DbHelper.minIb();
        final avgIb = await DbHelper.avgIb();
        data['B相电流'] = TableDataModel(
          latestValue: latestIb.ib!,
          latestCollectTime: latestIb.collectTime!.convertDate(),
          maxValue: maxIb.ib!,
          maxCollectTime: maxIb.collectTime!.convertDate(),
          minValue: minIb.ib!,
          minCollectTime: minIb.collectTime!.convertDate(),
          avgValue: avgIb,
        );
        final latestIc = await DbHelper.latest();
        final maxIc = await DbHelper.maxIc();
        final minIc = await DbHelper.minIc();
        final avgIc = await DbHelper.avgIc();
        data['C相电流'] = TableDataModel(
          latestValue: latestIc.ic!,
          latestCollectTime: latestIc.collectTime!.convertDate(),
          maxValue: maxIc.ic!,
          maxCollectTime: maxIc.collectTime!.convertDate(),
          minValue: minIc.ic!,
          minCollectTime: minIc.collectTime!.convertDate(),
          avgValue: avgIc,
        );
        break;
      case '功率':
        final latestP = await DbHelper.latest();
        final maxP = await DbHelper.maxP();
        final minP = await DbHelper.minP();
        final avgP = await DbHelper.avgP();
        data['有功功率'] = TableDataModel(
          latestValue: latestP.p!,
          latestCollectTime: latestP.collectTime!.convertDate(),
          maxValue: maxP.p!,
          maxCollectTime: maxP.collectTime!.convertDate(),
          minValue: minP.p!,
          minCollectTime: minP.collectTime!.convertDate(),
          avgValue: avgP,
        );
        final latestQ = await DbHelper.latest();
        final maxQ = await DbHelper.maxQ();
        final minQ = await DbHelper.minQ();
        final avgQ = await DbHelper.avgQ();
        data['无功功率'] = TableDataModel(
          latestValue: latestQ.q!,
          latestCollectTime: latestQ.collectTime!.convertDate(),
          maxValue: maxQ.q!,
          maxCollectTime: maxQ.collectTime!.convertDate(),
          minValue: minQ.q!,
          minCollectTime: minQ.collectTime!.convertDate(),
          avgValue: avgQ,
        );
        final latestPf = await DbHelper.latest();
        final maxPf = await DbHelper.maxPf();
        final minPf = await DbHelper.minPf();
        final avgPf = await DbHelper.avgPf();
        data['功率因数'] = TableDataModel(
          latestValue: latestPf.pf!,
          latestCollectTime: latestPf.collectTime!.convertDate(),
          maxValue: maxPf.pf!,
          maxCollectTime: maxPf.collectTime!.convertDate(),
          minValue: minPf.pf!,
          minCollectTime: minPf.collectTime!.convertDate(),
          avgValue: avgPf,
        );
        break;
      case '温湿度':
        final latestTemperature = await DbHelper.latest();
        final maxTemperature = await DbHelper.maxTemperature();
        final minTemperature = await DbHelper.minTemperature();
        final avgTemperature = await DbHelper.avgTemperature();
        data['温度'] = TableDataModel(
          latestValue: latestTemperature.temperature!,
          latestCollectTime: latestTemperature.collectTime!.convertDate(),
          maxValue: maxTemperature.temperature!,
          maxCollectTime: maxTemperature.collectTime!.convertDate(),
          minValue: minTemperature.temperature!,
          minCollectTime: minTemperature.collectTime!.convertDate(),
          avgValue: avgTemperature,
        );
        final latestHumidity = await DbHelper.latest();
        final maxHumidity = await DbHelper.maxHumidity();
        final minHumidity = await DbHelper.minHumidity();
        final avgHumidity = await DbHelper.avgHumidity();
        data['湿度'] = TableDataModel(
          latestValue: latestHumidity.humidity!,
          latestCollectTime: latestHumidity.collectTime!.convertDate(),
          maxValue: maxHumidity.humidity!,
          maxCollectTime: maxHumidity.collectTime!.convertDate(),
          minValue: minHumidity.humidity!,
          minCollectTime: minHumidity.collectTime!.convertDate(),
          avgValue: avgHumidity,
        );
        break;
    }
  }
}
