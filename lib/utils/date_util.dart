extension DateUtilExtension on DateTime {
  String time() {
    return "$year-${month < 10 ? '0$month' : month}-${day < 10 ? '0$day' : day} ${hour < 10 ? '0$hour' : hour}:${minute < 10 ? '0$minute' : minute}:${second < 10 ? '0$second' : second}";
  }

  String hms() {
    return "${hour < 10 ? '0$hour' : hour}:${minute < 10 ? '0$minute' : minute}:${second < 10 ? '0$second' : second}";
  }
}
