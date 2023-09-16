import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdsystem/db/energy_model.dart';
import 'package:pdsystem/db/user_model.dart';
import 'package:flutter/services.dart' show rootBundle;

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
    final data = await isar?.energyModels.where().findAll();
    final result = data!.map((e) => e.collectTime!).toList();
    var dateSet = result.map((e) => DateTime(e.year, e.month, e.day)).toSet();
    return dateSet.map((date) {
      return DateFormat('yyyy-MM-dd').format(date);
    }).toList();
  }

  static Future<List<EnergyModel>> queryAll() async {
    final data = await isar?.energyModels.where().findAll();
    return data ?? [];
  }

  ///所有排序方法
  static Future<EnergyModel> maxUa() async {
    final data = await isar?.energyModels.where().sortByUa().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxUb() async {
    final data = await isar?.energyModels.where().sortByUb().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxUc() async {
    final data = await isar?.energyModels.where().sortByUc().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxUab() async {
    final data = await isar?.energyModels.where().sortByUab().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxUbc() async {
    final data = await isar?.energyModels.where().sortByUbc().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxUca() async {
    final data = await isar?.energyModels.where().sortByUca().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxIa() async {
    final data = await isar?.energyModels.where().sortByIa().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxIb() async {
    final data = await isar?.energyModels.where().sortByIb().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxIc() async {
    final data = await isar?.energyModels.where().sortByIc().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxP() async {
    final data = await isar?.energyModels.where().sortByP().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxQ() async {
    final data = await isar?.energyModels.where().sortByQ().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxPf() async {
    final data = await isar?.energyModels.where().sortByPf().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxTemperature() async {
    final data =
        await isar?.energyModels.where().sortByTemperature().findFirst();
    return data!;
  }

  static Future<EnergyModel> maxHumidity() async {
    final data = await isar?.energyModels.where().sortByHumidity().findFirst();
    return data!;
  }

  static Future<EnergyModel> minUa() async {
    final data = await isar?.energyModels.where().sortByUa().findFirst();
    return data!;
  }

  static Future<EnergyModel> minUb() async {
    final data = await isar?.energyModels.where().sortByUb().findFirst();
    return data!;
  }

  static Future<EnergyModel> minUc() async {
    final data = await isar?.energyModels.where().sortByUc().findFirst();
    return data!;
  }

  static Future<EnergyModel> minUab() async {
    final data = await isar?.energyModels.where().sortByUab().findFirst();
    return data!;
  }

  static Future<EnergyModel> minUbc() async {
    final data = await isar?.energyModels.where().sortByUbc().findFirst();
    return data!;
  }

  static Future<EnergyModel> minUca() async {
    final data = await isar?.energyModels.where().sortByUca().findFirst();
    return data!;
  }

  static Future<EnergyModel> minIa() async {
    final data = await isar?.energyModels.where().sortByIa().findFirst();
    return data!;
  }

  static Future<EnergyModel> minIb() async {
    final data = await isar?.energyModels.where().sortByIb().findFirst();
    return data!;
  }

  static Future<EnergyModel> minIc() async {
    final data = await isar?.energyModels.where().sortByIc().findFirst();
    return data!;
  }

  static Future<EnergyModel> minP() async {
    final data = await isar?.energyModels.where().sortByP().findFirst();
    return data!;
  }

  static Future<EnergyModel> minQ() async {
    final data = await isar?.energyModels.where().sortByQ().findFirst();
    return data!;
  }

  static Future<EnergyModel> minPf() async {
    final data = await isar?.energyModels.where().sortByPf().findFirst();
    return data!;
  }

  static Future<EnergyModel> minTemperature() async {
    final data =
        await isar?.energyModels.where().sortByTemperature().findFirst();
    return data!;
  }

  static Future<EnergyModel> minHumidity() async {
    final data = await isar?.energyModels.where().sortByHumidity().findFirst();
    return data!;
  }

  static Future<double> avgUa() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.ua!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgUb() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.ub!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgUc() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.uc!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgUab() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.uab!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgUbc() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.ubc!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgUca() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.uca!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgIa() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.ia!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgIb() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.ib!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgIc() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.ic!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgP() async {
    final data = await isar?.energyModels.where().findAll();
    final result = data!.map((e) => e.p!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgQ() async {
    final data = await isar?.energyModels.where().findAll();
    final result = data!.map((e) => e.q!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgPf() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.pf!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgTemperature() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.temperature!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<double> avgHumidity() async {
    final data = await isar?.energyModels.where().findAll();
    final result =
        data!.map((e) => e.humidity!).reduce((a, b) => a + b) / data.length;
    return result;
  }

  static Future<EnergyModel> latest() async {
    final data =
        await isar?.energyModels.where().sortByCollectTime().findFirst();
    return data!;
  }
}
