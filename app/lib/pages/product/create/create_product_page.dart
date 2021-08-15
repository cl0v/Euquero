import 'package:app/pages/product/create/create_product_repository.dart';
import 'package:app/pages/product/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateProductPage extends StatefulWidget {
  final DocumentReference reference;
  const CreateProductPage({ @required  this.reference}) ;

  @override
  _CreateProductPageState createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final descController = TextEditingController();

  CreateProductRepository repository = CreateProductRepository();

  onSubmit() {
    ProductModel product = ProductModel(
      titleController.text,
      priceController.text,
      descController.text,
    );

    repository.create(widget.reference, product);
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
            decoration: InputDecoration(hintText: "Preco"),
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
