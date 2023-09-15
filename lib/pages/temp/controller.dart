import 'package:get/get.dart';
import 'package:pdsystem/db/db_helper.dart';

import '../../db/data_model.dart';

class TempController extends GetxController {
  List<DataModel> temps = [];
  List<DataModel> hums = [];

  List<String> dateList = [];
  final selectedDate = ''.obs;
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
    final models = await DbHelper.getEnergiesByDate(
        date: DateTime.parse(selectedDate.value));
    temps = models
        .map((e) => DataModel(
              time: convertDateTimeToNumber(e.collectTime!),
              value: e.temperature!,
            ))
        .toList();
    hums = models
        .map((e) => DataModel(
              time: convertDateTimeToNumber(e.collectTime!),
              value: e.humidity!,
            ))
        .toList();

    update();
  }

  double convertDateTimeToNumber(DateTime datetime) {
    return datetime.hour + datetime.minute / 60.0;
  }

  changeDate(String date) {
    selectedDate.value = date;
    getModels();
  }
}
