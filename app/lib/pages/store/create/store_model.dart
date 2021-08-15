import 'dart:convert';

class StoreModel {
  final String title;

  StoreModel(this.title);
  
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

  factory StoreModel.fromMap(Map<String, dynamic> map) {
    return StoreModel(
      map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreModel.fromJson(String source) => StoreModel.fromMap(json.decode(source));
}
