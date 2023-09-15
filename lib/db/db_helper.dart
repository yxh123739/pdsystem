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
}
