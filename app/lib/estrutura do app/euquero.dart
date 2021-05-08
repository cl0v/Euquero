import 'package:app/estrutura%20do%20app/pages/StorePage.dart';
import 'package:flutter/material.dart';

class Euquero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eu Quero Delivery App",
      theme: ThemeData(primaryColor: Colors.amber, accentColor: Colors.amber),
      home: StorePage(),
    );
  }
}
