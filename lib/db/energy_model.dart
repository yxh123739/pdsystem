import 'package:isar/isar.dart';

part 'energy_model.g.dart';

@collection
class EnergyModel {
  Id id = Isar.autoIncrement;

  /// 回路名称
  String? circuitName;

  /// 采集时间
  DateTime? collectTime;

  /// 电能指标,单位是千瓦时(kWh)
  double? epi;

  /// A相电压,单位是伏特(V)
  double? ua;

  /// B相电压,单位是伏特(V)
  double? ub;

  /// C相电压,单位是伏特(V)
  double? uc;

  /// A相与B相电压,单位是伏特(V)
  double? uab;

  /// B相与C相电压,单位是伏特(V)
  double? ubc;

  /// C相与A相电压,单位是伏特(V)
  double? uca;

  /// A相电流,单位是安培(A)
  double? ia;

  /// B相电流,单位是安培(A)
  double? ib;

  /// C相电流,单位是安培(A)
  double? ic;

  /// 有功功率,单位是千瓦(kW)
  double? p;

  /// 无功功率,单位是千乏(kVar)
  double? q;

  /// 功率因数
  double? pf;

  /// 温度,单位是摄氏度(°C)
  double? temperature;

  /// 湿度,单位是百分比(%)
  double? humidity;

  EnergyModel();

  ///fromjson方法
  EnergyModel.fromJson(Map<String, dynamic> json) {
    circuitName = json['circuitName'];
    collectTime = json['collectTime'] != null
        ? DateTime.parse(json['collectTime'])
        : null;
    epi = double.parse(json['Epi(kWh)'].toString());
    ua = json['Ua(V)'];
    ub = json['Ub(V)'];
    uc = json['Uc(V)'];
    uab = json['Uab(V)'];
    ubc = json['Ubc(V)'];
    uca = json['Uca(V)'];
    ia = json['Ia(A)'];
    ib = json['Ib(A)'];
    ic = json['Ic(A)'];
    p = json['P(kW)'];
    q = json['Q(kVar)'];
    pf = json['Pf'];
    temperature = json['temperature'];
    humidity = json['humidity'];
  }

  ///toJson方法
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['circuitName'] = circuitName;
    data['collectTime'] = collectTime.toString();
    data['epi'] = epi;
    data['ua'] = ua;
    data['ub'] = ub;
    data['uc'] = uc;
    data['uab'] = uab;
    data['ubc'] = ubc;
    data['uca'] = uca;
    data['ia'] = ia;
    data['ib'] = ib;
    data['ic'] = ic;
    data['p'] = p;
    data['q'] = q;
    data['pf'] = pf;
    data['temperature'] = temperature;
    data['humidity'] = humidity;
    return data;
  }
}
