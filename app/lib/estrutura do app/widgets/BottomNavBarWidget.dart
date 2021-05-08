import 'package:app/estrutura%20do%20app/pages/AlertPage.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Lojas"),
        BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: "Alertas"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart), label: "Carrinho"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
      ],
      selectedItemColor: Color(0xFFfd5352),
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
          print(_selectedIndex);
        });
      },
      currentIndex: _selectedIndex,
    );
  }
}
