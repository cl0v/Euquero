import 'package:app/estrutura%20do%20app/widgets/BannerBar.dart';
import 'package:app/estrutura%20do%20app/widgets/BottomNavBarWidget.dart';
import 'package:app/estrutura%20do%20app/widgets/SubTitles.dart';
import 'package:app/estrutura%20do%20app/widgets/TopMenus.dart';
import 'package:app/estrutura%20do%20app/widgets/UpBar.dart';
import 'package:app/estrutura%20do%20app/widgets/food_card.dart';
import 'package:app/estrutura%20do%20app/widgets/search_file.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UpBar(),
            BannerBar(),
            Divider(
              height: 20,
            ),
            SearchField(),
            Divider(
              height: 20,
            ),
            SubTitles(
              text: "Navegue nas categorias abaixo:",
              color: Colors.blue[800],
              size: 20,
              weight: FontWeight.w900,
            ),
            TopMenus(),
            SubTitles(
              text: "Lojas em destaque:",
              color: Colors.blue[800],
              size: 20,
              weight: FontWeight.w900,
            ),
            FoodCard(
              name: "Pastelaria do kenny",
              imagePath: "assets/images/kenny.png",
              subtitle: "A melhor pastelaria da cidade",
            ),
            FoodCard(
              name: "Comida de Vó",
              imagePath: "assets/images/pizza.png",
              subtitle: "A melhor pastelaria da cidade",
            ),
            FoodCard(
              name: "Bolos de mel",
              imagePath: "assets/images/cupcake.png",
              subtitle: "A melhor pastelaria da cidade",
            ),
            FoodCard(
              name: "Churrasco na barca",
              imagePath: "assets/images/beer.png",
              subtitle: "A melhor pastelaria da cidade",
            ),
            FoodCard(
              name: "Omeleteria mas não tem!",
              imagePath: "assets/images/breakfast.png",
              subtitle: "A melhor pastelaria da cidade",
            ),
            FoodCard(
              name: "Pastelaria do kenny",
              imagePath: "assets/images/lunch.jpeg",
              subtitle: "A melhor pastelaria da cidade",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
