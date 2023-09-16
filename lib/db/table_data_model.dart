class TableDataModel {
  ///最新值
  double latestValue;

  ///最新值的采集时间
  String latestCollectTime;

  ///最大值
  double maxValue;

  ///最大值的采集时间
  String maxCollectTime;

  ///最小值
  double minValue;

  ///最小值的采集时间
  String minCollectTime;

  ///平均值
  double avgValue;

  TableDataModel({
    required this.latestValue,
    required this.latestCollectTime,
    required this.maxValue,
    required this.maxCollectTime,
    required this.minValue,
    required this.minCollectTime,
    required this.avgValue,
  });

  Map<String, dynamic> toJson() {
    return {
      'latestValue': latestValue,
      'latestCollectTime': latestCollectTime,
      'maxValue': maxValue,
      'maxCollectTime': maxCollectTime,
      'minValue': minValue,
      'minCollectTime': minCollectTime,
      'avgValue': avgValue,
    };
  }
}
