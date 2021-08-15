import 'package:app/constants/firestore.dart';
import 'package:app/pages/product/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateProductRepository {
  final firestore = FirebaseFirestore.instance;

  create(DocumentReference reference,ProductModel product) {
    reference.collection(productCollection).add(product.toMap());
  }
}
