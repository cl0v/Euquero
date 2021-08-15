import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../product_model.dart';
import '../product_repository.dart';

class CreateProductPage extends StatefulWidget {
  final DocumentReference storeRef;
  const CreateProductPage({required this.storeRef}) ;

  @override
  _CreateProductPageState createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final descController = TextEditingController();

  ProductRepository repository = ProductRepository();

  onSubmit() {
    ProductModel product = ProductModel(
      titleController.text,
      priceController.text,
      descController.text,
    );
    repository.create(widget.storeRef, product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextFormField(
            controller: titleController, //TODO: ADD CONTROLLER
            decoration: InputDecoration(hintText: "Titulo"),
          ),
          TextFormField(
            controller: priceController, //TODO: ADD CONTROLLER
            decoration: InputDecoration(hintText: "Preço"),
          ),
          TextFormField(
            controller: descController, //TODO: ADD CONTROLLER
            decoration: InputDecoration(hintText: "Desc"),
          ),
          ElevatedButton(
            onPressed: onSubmit,
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }
}
