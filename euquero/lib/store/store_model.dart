import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class StoreModel {
  final String title;
  DocumentReference reference;

  StoreModel({required this.title, required this.reference});
  
/*
  Imagem
  Titulo
  - descricao
  - Tempo aproximado de entrega
*/

  Map<String, dynamic> toMap() {
    return {
      'title': title,
    };
  }


  factory StoreModel.fromSnap(DocumentSnapshot<Map<String, dynamic>> snap) {
    return StoreModel(
      title: snap.data()!['title'],
      reference: snap.reference
    );
  }



}
