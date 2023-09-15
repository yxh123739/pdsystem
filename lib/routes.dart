import 'package:get/get.dart';
import 'package:pdsystem/pages/circuit/binding.dart';
import 'package:pdsystem/pages/circuit/view.dart';
import 'package:pdsystem/pages/auth/login/login_binding.dart';
import 'package:pdsystem/pages/auth/login/login_page.dart';
import 'package:pdsystem/pages/predict/binding.dart';
import 'package:pdsystem/pages/predict/view.dart';

import 'pages/auth/register/binding.dart';
import 'pages/auth/register/view.dart';
import 'pages/function/page.dart';
import 'pages/history/binding.dart';
import 'pages/history/view.dart';
import 'pages/home/binding.dart';
import 'pages/home/view.dart';
import 'pages/temp/binding.dart';
import 'pages/temp/view.dart';

class Routes {
  static const login = '/login';
  static const register = '/register';
  static const function = '/function';
  static const home = '/home';
  static const temp = '/temp';
  static const history = '/history';
  static const predict = '/predict';
  static const circuit = '/circuit';

  static final routes = <GetPage>[
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: function,
      page: () => const FunctionPage(),
    ),
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: temp,
      page: () => const TempPage(),
      binding: TempBinding(),
    ),
    GetPage(
      name: history,
      page: () => const HistoryPage(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: predict,
      page: () => const PredictPage(),
      binding: PredictBinding(),
    ),
    GetPage(
      name: circuit,
      page: () => const CircuitPage(),
      binding: CircuitBinding(),
    ),
  ];
}
