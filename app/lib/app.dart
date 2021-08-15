import 'package:app/pages/store/create/create_store_page.dart';
import 'package:flutter/material.dart';

import 'estrutura do app/pages/StorePage.dart';

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
      home: StorePage(),
    );
  }
}
