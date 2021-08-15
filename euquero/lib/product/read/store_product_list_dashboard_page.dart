import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:euquero/product/create/create_product_page.dart';
import 'package:euquero/store/store_repository.dart';
import 'package:euquero/utils/navigation.dart';
import 'package:flutter/material.dart';

class StoreProductListDashboardPage extends StatefulWidget {
  @override
  _StoreProductListDashboardPageState createState() => _StoreProductListDashboardPageState();
}

class _StoreProductListDashboardPageState extends State<StoreProductListDashboardPage> {
  onCreatePressed() {
    StoreRepository repository = StoreRepository();
    DocumentReference storeRef = repository.fetchRef();
    push(context, CreateProductPage(storeRef: storeRef));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: onCreatePressed, child: Icon(Icons.add),),
    );
  }
}
