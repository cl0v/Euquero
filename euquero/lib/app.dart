import 'package:euquero/constants/firestore.dart';
import 'package:euquero/pages/client/store_list_page.dart';
import 'package:euquero/routes.dart';
import 'package:euquero/store/store_main_page.dart';
import 'package:flutter/material.dart';

class Euquero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eu Quero",
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.amber,
      ),
      initialRoute: Routes.home,
      routes: routes,
    );
  }
}
