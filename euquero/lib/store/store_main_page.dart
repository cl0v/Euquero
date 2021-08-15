import 'package:euquero/product/read/store_product_list_dashboard_page.dart';
import 'package:flutter/material.dart';

class StoreMainPage extends StatefulWidget {
  const StoreMainPage({ Key? key }) : super(key: key);

  @override
  _StoreMainPageState createState() => _StoreMainPageState();
}

class _StoreMainPageState extends State<StoreMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreProductListDashboardPage(),
    );
  }
}