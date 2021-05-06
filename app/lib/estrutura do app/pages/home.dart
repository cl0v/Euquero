import 'package:app/estrutura%20do%20app/widgets/BottomNavBarWidget.dart';
import 'package:app/estrutura%20do%20app/widgets/StoreList.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreList(),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
