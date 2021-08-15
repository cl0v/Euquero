import 'package:euquero/pages/client/store_list_page.dart';
import 'package:euquero/store/store_main_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const home = '/';
  static const dash = '/dash';
}

final routes = <String, WidgetBuilder>{
  Routes.home: (context) => StoreListPage(),
  Routes.dash: (context) => StoreMainPage(),
};
