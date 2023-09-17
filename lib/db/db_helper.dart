import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdsystem/db/energy_model.dart';
import 'package:pdsystem/db/user_model.dart';
import 'package:pdsystem/utils/date_util.dart';

import 'table_data_model.dart';

class DbHelper {
  static Isar? isar;

  static Future<void> init() async {
    if (isar != null) {
      return;
    }
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [UserModelSchema, EnergyModelSchema],
      directory: dir.path,
      name: 'pdsystem',
    );
    await initEnergyData();
  }

  static Future<void> register({
    required String phone,
    required String password,
    required Function(bool result) onComplete,
  }) async {
    final eUser =
        await isar?.userModels.where().filter().phoneEqualTo(phone).findFirst();
    if (eUser != null) {
      onComplete(false);
      return;
    }
    final user = UserModel();
    user.phone = phone;
    user.password = password;
    await isar?.writeTxn(() async {
      int? row = await isar?.userModels.put(user);
      onComplete(row != null);
    });
  }

  static Future<bool> login({
    required String phone,
    required String password,
  }) async {
    final user =
        await isar?.userModels.where().filter().phoneEqualTo(phone).findFirst();
    if (user != null) {
      return user.password == password;
    }
    return false;
  }

  static Future<void> close() async {
    await isar?.close();
  }

  static Future<void> initEnergyData() async {
    final exist = await isar?.energyModels.where().findFirst();
    if (exist != null) return;

    final data = await rootBundle.loadString('assets/json/data.json');
    final models = json.decode(data);
    List<EnergyModel> energies = [];
    for (var element in models) {
      energies.add(EnergyModel.fromJson(element));
    }
    await isar?.writeTxn(() async {
      await isar?.energyModels.putAll(energies);
    });
  }

  static Future<List<EnergyModel>> getEnergiesByDate(
      {required DateTime date}) async {
    final data = await isar?.energyModels
        .where()
        .filter()
        .collectTimeBetween(
          date,
          date.add(const Duration(days: 1)),
        )
        .findAll();
    return data ?? [];
  }

  static Future<List<String>> getDates() async {
    final data = await queryAll();
    final result = data.map((e) => e.collectTime!).toList();
    var dateSet = result.map((e) => DateFormat('yyyy-MM-dd').format(e)).toSet();
    return dateSet.toList();
  }

  static Future<List<EnergyModel>> queryAll() async {
    final data = await isar?.energyModels.where().findAll();
    return data ?? [];
  }

  static Future<Map<String, Map<String, TableDataModel>>> tableData(
      {int? predict}) async {
    final minUa = await isar?.energyModels.where().sortByUa().findFirst();
    final minUb = await isar?.energyModels.where().sortByUb().findFirst();
    final minUc = await isar?.energyModels.where().sortByUc().findFirst();
    final minUab = await isar?.energyModels.where().sortByUab().findFirst();
    final minUbc = await isar?.energyModels.where().sortByUbc().findFirst();
    final minUca = await isar?.energyModels.where().sortByUca().findFirst();
    final minIa = await isar?.energyModels.where().sortByIa().findFirst();
    final minIb = await isar?.energyModels.where().sortByIb().findFirst();
    final minIc = await isar?.energyModels.where().sortByIc().findFirst();
    final minP = await isar?.energyModels.where().sortByP().findFirst();
    final minQ = await isar?.energyModels.where().sortByQ().findFirst();
    final minPf = await isar?.energyModels.where().sortByPf().findFirst();
    final minTemperature =
        await isar?.energyModels.where().sortByTemperature().findFirst();
    final minHumidity =
        await isar?.energyModels.where().sortByHumidity().findFirst();

    final maxUa = await isar?.energyModels.where().sortByUaDesc().findFirst();
    final maxUb = await isar?.energyModels.where().sortByUbDesc().findFirst();
    final maxUc = await isar?.energyModels.where().sortByUcDesc().findFirst();
    final maxUab = await isar?.energyModels.where().sortByUabDesc().findFirst();
    final maxUbc = await isar?.energyModels.where().sortByUbcDesc().findFirst();
    final maxUca = await isar?.energyModels.where().sortByUcaDesc().findFirst();
    final maxIa = await isar?.energyModels.where().sortByIaDesc().findFirst();
    final maxIb = await isar?.energyModels.where().sortByIbDesc().findFirst();
    final maxIc = await isar?.energyModels.where().sortByIcDesc().findFirst();
    final maxP = await isar?.energyModels.where().sortByPDesc().findFirst();
    final maxQ = await isar?.energyModels.where().sortByQDesc().findFirst();
    final maxPf = await isar?.energyModels.where().sortByPfDesc().findFirst();
    final maxTemperature =
        await isar?.energyModels.where().sortByTemperatureDesc().findFirst();
    final maxHumidity =
        await isar?.energyModels.where().sortByHumidityDesc().findFirst();
    final latestModel =
        await isar?.energyModels.where().sortByCollectTimeDesc().findFirst();
    final models = await isar?.energyModels.where().findAll();
    final avgUa =
        models!.map((e) => e.ua!).reduce((value, element) => value + element) /
            models.length;
    final avgUb =
        models.map((e) => e.ub!).reduce((value, element) => value + element) /
            models.length;
    final avgUc =
        models.map((e) => e.uc!).reduce((value, element) => value + element) /
            models.length;
    final avgUab =
        models.map((e) => e.uab!).reduce((value, element) => value + element) /
            models.length;
    final avgUbc =
        models.map((e) => e.ubc!).reduce((value, element) => value + element) /
            models.length;
    final avgUca =
        models.map((e) => e.uca!).reduce((value, element) => value + element) /
            models.length;
    final avgIa =
        models.map((e) => e.ia!).reduce((value, element) => value + element) /
            models.length;
    final avgIb =
        models.map((e) => e.ib!).reduce((value, element) => value + element) /
            models.length;
    final avgIc =
        models.map((e) => e.ic!).reduce((value, element) => value + element) /
            models.length;
    final avgP =
        models.map((e) => e.p!).reduce((value, element) => value + element) /
            models.length;
    final avgQ =
        models.map((e) => e.q!).reduce((value, element) => value + element) /
            models.length;
    final avgPf =
        models.map((e) => e.pf!).reduce((value, element) => value + element) /
            models.length;
    final avgTemperature = models
            .map((e) => e.temperature!)
            .reduce((value, element) => value + element) /
        models.length;
    final avgHumidity = models
            .map((e) => e.humidity!)
            .reduce((value, element) => value + element) /
        models.length;
    return {
      '电压': {
        'A相电压': TableDataModel(
          latestValue: latestModel!.ua!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxUa!.ua!,
          maxCollectTime: maxUa.collectTime!.time(),
          minValue: minUa!.ua!,
          minCollectTime: minUa.collectTime!.time(),
          avgValue: avgUa,
        ),
        'B相电压': TableDataModel(
          latestValue: latestModel.ub!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxUb!.ub!,
          maxCollectTime: maxUb.collectTime!.time(),
          minValue: minUb!.ub!,
          minCollectTime: minUb.collectTime!.time(),
          avgValue: avgUb,
        ),
        'C相电压': TableDataModel(
          latestValue: latestModel.uc!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxUc!.uc!,
          maxCollectTime: maxUc.collectTime!.time(),
          minValue: minUc!.uc!,
          minCollectTime: minUc.collectTime!.time(),
          avgValue: avgUc,
        ),
        'AB相电压': TableDataModel(
          latestValue: latestModel.uab!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxUab!.uab!,
          maxCollectTime: maxUab.collectTime!.time(),
          minValue: minUab!.uab!,
          minCollectTime: minUab.collectTime!.time(),
          avgValue: avgUab,
        ),
        'BC相电压': TableDataModel(
          latestValue: latestModel.ubc!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxUbc!.ubc!,
          maxCollectTime: maxUbc.collectTime!.time(),
          minValue: minUbc!.ubc!,
          minCollectTime: minUbc.collectTime!.time(),
          avgValue: avgUbc,
        ),
        'CA相电压': TableDataModel(
          latestValue: latestModel.uca!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxUca!.uca!,
          maxCollectTime: maxUca.collectTime!.time(),
          minValue: minUca!.uca!,
          minCollectTime: minUca.collectTime!.time(),
          avgValue: avgUca,
        ),
      },
      '电流': {
        'A相电流': TableDataModel(
          latestValue: latestModel.ia!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxIa!.ia!,
          maxCollectTime: maxIa.collectTime!.time(),
          minValue: minIa!.ia!,
          minCollectTime: minIa.collectTime!.time(),
          avgValue: avgIa,
        ),
        'B相电流': TableDataModel(
          latestValue: latestModel.ib!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxIb!.ib!,
          maxCollectTime: maxIb.collectTime!.time(),
          minValue: minIb!.ib!,
          minCollectTime: minIb.collectTime!.time(),
          avgValue: avgIb,
        ),
        'C相电流': TableDataModel(
          latestValue: latestModel.ic!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxIc!.ic!,
          maxCollectTime: maxIc.collectTime!.time(),
          minValue: minIc!.ic!,
          minCollectTime: minIc.collectTime!.time(),
          avgValue: avgIc,
        ),
      },
      '功率': {
        '有功功率': TableDataModel(
          latestValue: latestModel.p!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxP!.p!,
          maxCollectTime: maxP.collectTime!.time(),
          minValue: minP!.p!,
          minCollectTime: minP.collectTime!.time(),
          avgValue: avgP,
        ),
        '无功功率': TableDataModel(
          latestValue: latestModel.q!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxQ!.q!,
          maxCollectTime: maxQ.collectTime!.time(),
          minValue: minQ!.q!,
          minCollectTime: minQ.collectTime!.time(),
          avgValue: avgQ,
        ),
        '功率因数': TableDataModel(
          latestValue: latestModel.pf!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxPf!.pf!,
          maxCollectTime: maxPf.collectTime!.time(),
          minValue: minPf!.pf!,
          minCollectTime: minPf.collectTime!.time(),
          avgValue: avgPf,
        ),
      },
      '温湿度': {
        '温度': TableDataModel(
          latestValue: latestModel.temperature!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxTemperature!.temperature!,
          maxCollectTime: maxTemperature.collectTime!.time(),
          minValue: minTemperature!.temperature!,
          minCollectTime: minTemperature.collectTime!.time(),
          avgValue: avgTemperature,
        ),
        '湿度': TableDataModel(
          latestValue: latestModel.humidity!,
          latestCollectTime: latestModel.collectTime!.time(),
          maxValue: maxHumidity!.humidity!,
          maxCollectTime: maxHumidity.collectTime!.time(),
          minValue: minHumidity!.humidity!,
          minCollectTime: minHumidity.collectTime!.time(),
          avgValue: avgHumidity,
        ),
      },
    };
  }

  static Future<Map<String, Map<String, TableDataModel>>> predictTableData(
      {required int predict}) async {
    final now = DateTime.now();
    final dates = await getDates();
    final date = DateTime.parse(dates[Random().nextInt(dates.length - 1)]);
    final start = DateTime(
        date.year, date.month, date.day, now.hour, now.minute, now.second);
    final end = start.add(Duration(hours: predict));
    final filter = isar?.energyModels.where().filter().collectTimeBetween(
          start,
          end,
        );
    final minUa = await filter?.sortByUa().findFirst();
    final minUb = await filter?.sortByUb().findFirst();
    final minUc = await filter?.sortByUc().findFirst();
    final minUab = await filter?.sortByUab().findFirst();
    final minUbc = await filter?.sortByUbc().findFirst();
    final minUca = await filter?.sortByUca().findFirst();
    final minIa = await filter?.sortByIa().findFirst();
    final minIb = await filter?.sortByIb().findFirst();
    final minIc = await filter?.sortByIc().findFirst();
    final minP = await filter?.sortByP().findFirst();

    final minQ = await filter?.sortByQ().findFirst();
    final minPf = await filter?.sortByPf().findFirst();
    final minTemperature = await filter?.sortByTemperature().findFirst();
    final minHumidity = await filter?.sortByHumidity().findFirst();

    final maxUa = await filter?.sortByUaDesc().findFirst();
    final maxUb = await filter?.sortByUbDesc().findFirst();
    final maxUc = await filter?.sortByUcDesc().findFirst();
    final maxUab = await filter?.sortByUabDesc().findFirst();
    final maxUbc = await filter?.sortByUbcDesc().findFirst();
    final maxUca = await filter?.sortByUcaDesc().findFirst();
    final maxIa = await filter?.sortByIaDesc().findFirst();
    final maxIb = await filter?.sortByIbDesc().findFirst();
    final maxIc = await filter?.sortByIcDesc().findFirst();
    final maxP = await filter?.sortByPDesc().findFirst();
    final maxQ = await filter?.sortByQDesc().findFirst();
    final maxPf = await filter?.sortByPfDesc().findFirst();
    final maxTemperature = await filter?.sortByTemperatureDesc().findFirst();
    final maxHumidity = await filter?.sortByHumidityDesc().findFirst();
    final latestModel = await filter?.sortByCollectTime().findFirst();
    final models = await filter!.findAll();
    final avgUa =
        models.map((e) => e.ua!).reduce((value, element) => value + element) /
            models.length;
    final avgUb =
        models.map((e) => e.ub!).reduce((value, element) => value + element) /
            models.length;
    final avgUc =
        models.map((e) => e.uc!).reduce((value, element) => value + element) /
            models.length;
    final avgUab =
        models.map((e) => e.uab!).reduce((value, element) => value + element) /
            models.length;
    final avgUbc =
        models.map((e) => e.ubc!).reduce((value, element) => value + element) /
            models.length;
    final avgUca =
        models.map((e) => e.uca!).reduce((value, element) => value + element) /
            models.length;
    final avgIa =
        models.map((e) => e.ia!).reduce((value, element) => value + element) /
            models.length;
    final avgIb =
        models.map((e) => e.ib!).reduce((value, element) => value + element) /
            models.length;
    final avgIc =
        models.map((e) => e.ic!).reduce((value, element) => value + element) /
            models.length;
    final avgP =
        models.map((e) => e.p!).reduce((value, element) => value + element) /
            models.length;
    final avgQ =
        models.map((e) => e.q!).reduce((value, element) => value + element) /
            models.length;
    final avgPf =
        models.map((e) => e.pf!).reduce((value, element) => value + element) /
            models.length;
    final avgTemperature = models
            .map((e) => e.temperature!)
            .reduce((value, element) => value + element) /
        models.length;
    final avgHumidity = models
            .map((e) => e.humidity!)
            .reduce((value, element) => value + element) /
        models.length;

    String convertDate(DateTime time) {
      if (time.hour + predict > 24) {
        return DateTime(now.year, now.month, now.day + 1,
                time.hour + predict - 24, time.minute, time.second)
            .time();
      } else {
        return DateTime(now.year, now.month, now.day, time.hour + predict,
                time.minute, time.second)
            .time();
      }
    }

    Map<String, Map<String, TableDataModel>> result = {
      '电压': {
        'A相电压': TableDataModel(
          latestValue: latestModel!.ua!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxUa!.ua!,
          maxCollectTime: convertDate(maxUa.collectTime!),
          minValue: minUa!.ua!,
          minCollectTime: convertDate(minUa.collectTime!),
          avgValue: avgUa,
        ),
        'B相电压': TableDataModel(
          latestValue: latestModel.ub!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxUb!.ub!,
          maxCollectTime: convertDate(maxUb.collectTime!),
          minValue: minUb!.ub!,
          minCollectTime: convertDate(minUb.collectTime!),
          avgValue: avgUb,
        ),
        'C相电压': TableDataModel(
          latestValue: latestModel.uc!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxUc!.uc!,
          maxCollectTime: convertDate(maxUc.collectTime!),
          minValue: minUc!.uc!,
          minCollectTime: convertDate(minUc.collectTime!),
          avgValue: avgUc,
        ),
        'AB相电压': TableDataModel(
          latestValue: latestModel.uab!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxUab!.uab!,
          maxCollectTime: convertDate(maxUab.collectTime!),
          minValue: minUab!.uab!,
          minCollectTime: convertDate(minUab.collectTime!),
          avgValue: avgUab,
        ),
        'BC相电压': TableDataModel(
          latestValue: latestModel.ubc!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxUbc!.ubc!,
          maxCollectTime: convertDate(maxUbc.collectTime!),
          minValue: minUbc!.ubc!,
          minCollectTime: convertDate(minUbc.collectTime!),
          avgValue: avgUbc,
        ),
        'CA相电压': TableDataModel(
          latestValue: latestModel.uca!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxUca!.uca!,
          maxCollectTime: convertDate(maxUca.collectTime!),
          minValue: minUca!.uca!,
          minCollectTime: convertDate(minUca.collectTime!),
          avgValue: avgUca,
        ),
      },
      '电流': {
        'A相电流': TableDataModel(
          latestValue: latestModel.ia!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxIa!.ia!,
          maxCollectTime: convertDate(maxIa.collectTime!),
          minValue: minIa!.ia!,
          minCollectTime: convertDate(minIa.collectTime!),
          avgValue: avgIa,
        ),
        'B相电流': TableDataModel(
          latestValue: latestModel.ib!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxIb!.ib!,
          maxCollectTime: convertDate(maxIb.collectTime!),
          minValue: minIb!.ib!,
          minCollectTime: convertDate(minIb.collectTime!),
          avgValue: avgIb,
        ),
        'C相电流': TableDataModel(
          latestValue: latestModel.ic!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxIc!.ic!,
          maxCollectTime: convertDate(maxIc.collectTime!),
          minValue: minIc!.ic!,
          minCollectTime: convertDate(minIc.collectTime!),
          avgValue: avgIc,
        ),
      },
      '功率': {
        '有功功率': TableDataModel(
          latestValue: latestModel.p!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxP!.p!,
          maxCollectTime: convertDate(maxP.collectTime!),
          minValue: minP!.p!,
          minCollectTime: convertDate(minP.collectTime!),
          avgValue: avgP,
        ),
        '无功功率': TableDataModel(
          latestValue: latestModel.q!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxQ!.q!,
          maxCollectTime: convertDate(maxQ.collectTime!),
          minValue: minQ!.q!,
          minCollectTime: convertDate(minQ.collectTime!),
          avgValue: avgQ,
        ),
        '功率因数': TableDataModel(
          latestValue: latestModel.pf!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxPf!.pf!,
          maxCollectTime: convertDate(maxPf.collectTime!),
          minValue: minPf!.pf!,
          minCollectTime: convertDate(minPf.collectTime!),
          avgValue: avgPf,
        ),
      },
      '温湿度': {
        '温度': TableDataModel(
          latestValue: latestModel.temperature!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxTemperature!.temperature!,
          maxCollectTime: convertDate(maxTemperature.collectTime!),
          minValue: minTemperature!.temperature!,
          minCollectTime: convertDate(minTemperature.collectTime!),
          avgValue: avgTemperature,
        ),
        '湿度': TableDataModel(
          latestValue: latestModel.humidity!,
          latestCollectTime: convertDate(latestModel.collectTime!),
          maxValue: maxHumidity!.humidity!,
          maxCollectTime: convertDate(maxHumidity.collectTime!),
          minValue: minHumidity!.humidity!,
          minCollectTime: convertDate(minHumidity.collectTime!),
          avgValue: avgHumidity,
        ),
      },
    };

    return result;
  }
}
