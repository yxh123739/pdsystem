import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdsystem/db/db_helper.dart';
import 'package:pdsystem/res/constants.dart';
import 'package:pdsystem/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.init();
  runApp(const MyApp());
  transparentStatusBar();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'pdsystem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      getPages: Routes.routes,
      initialRoute: Routes.login,
    );
  }
}

transparentStatusBar() {
  SystemUiOverlayStyle style = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  );
  SystemChrome.setSystemUIOverlayStyle(style);
}
