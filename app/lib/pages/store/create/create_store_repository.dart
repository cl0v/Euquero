import 'package:app/constants/firestore.dart';
import 'package:app/pages/store/create/store_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateStoreRepository {
  final firestore = FirebaseFirestore.instance;

  create(StoreModel store) {
    firestore.collection(storeCollection).add(store.toMap());
  }
}
