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
      body: Column(),
      bottomNavigationBar: NavBar(),
    );
  }
}
