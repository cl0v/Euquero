import 'package:app/estrutura%20do%20app/widgets/Alert_Card.dart';
import 'package:app/estrutura%20do%20app/widgets/BottomNavBarWidget.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alertas:',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AlertCard(
            imagePath: "assets/images/alert.png",
            name: "Hoje é dia de Sanduiche",
            size: 10,
            subtitle: "Os melhores sanduiches da cidade estão aqui!",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
          onPressed: fabPressed),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }

  void fabPressed() {}
}
