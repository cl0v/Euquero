import 'package:euquero/store/store_model.dart';
import 'package:flutter/material.dart';

import '../store_repository.dart';

// TODO: Quando acessado pela URL correta, entra nessa página
// euquero.com/dashboard ou coisa do tipo

class CreateStorePage extends StatefulWidget {

  @override
  _CreateStorePageState createState() => _CreateStorePageState();
}

class _CreateStorePageState extends State<CreateStorePage> {
  final titleController = TextEditingController();

  StoreRepository repository = StoreRepository();

  onSubmit() {
    StoreModel store = StoreModel(titleController.text);
    repository.create(store);
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
          ElevatedButton(
            onPressed: onSubmit,
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }
}
