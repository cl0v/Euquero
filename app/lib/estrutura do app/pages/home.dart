import 'package:app/estrutura%20do%20app/widgets/stores2.dart';
import 'package:flutter/material.dart';
import 'package:app/estrutura do app/widgets/NavBar.dart';
import 'package:app/estrutura do app/widgets/stores.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stores2(
        category: "Pastelaria",
        discount: 22,
        id: "Pastel",
        name: "Pastelaria teste",
        imagePath: "https://i.ibb.co/FVxxkDJ/Receita-de-Massa-de-Pastel.jpg",
        price: 12,
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
