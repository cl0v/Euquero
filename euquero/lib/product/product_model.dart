import 'dart:convert';

class ProductModel {
final String title;
final String price;
final String desc;

  ProductModel(this.title, this.price, this.desc);



  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'desc': desc,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      map['title'],
      map['price'],
      map['desc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));
}
