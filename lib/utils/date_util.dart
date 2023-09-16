extension DateUtilExtension on DateTime {
  String convertDate() {
    return "$year-$month-$day $hour:$minute";
  }

  String hms() {
    return "${hour < 10 ? '0$hour' : hour}:${minute < 10 ? '0$minute' : minute}:${second < 10 ? '0$second' : second}";
  }
}
