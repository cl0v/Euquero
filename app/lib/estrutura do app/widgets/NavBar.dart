import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white12,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          new BottomNavigationBarItem(
            icon: const Icon(Icons.add_location),
            label: 'Lojas',
          ),
          new BottomNavigationBarItem(
            icon: const Icon(Icons.add_alert),
            label: 'Avisos',
          ),
          new BottomNavigationBarItem(
            icon: const Icon(Icons.add_shopping_cart),
            label: 'Carrinho',
          ),
          new BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            label: 'Perfil',
          )
        ]);
  }
}
