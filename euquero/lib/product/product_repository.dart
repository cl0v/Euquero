import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:euquero/constants/firestore.dart';
import 'product_model.dart';

class ProductRepository {
  final firestore = FirebaseFirestore.instance;

  create(DocumentReference reference, ProductModel product) {
    reference.collection(productCollection).add(product.toMap());
  }

  Future<List<ProductModel>> readFromStoreId(String id) async {
    final g = await firestore
        .collection(storeCollection)
        .doc(id)
        .collection(productCollection)
        .get();
    return g.docs.map((e) => ProductModel.fromMap(e.data())).toList();
  }
}
