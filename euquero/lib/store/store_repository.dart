import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:euquero/constants/firestore.dart';

import 'store_model.dart';

class StoreRepository {
  final firestore = FirebaseFirestore.instance;

  create(StoreModel store) {
    firestore.collection(storeCollection).add(store.toMap());
  }


  Future<StoreModel> read(String uid) async {
    final f = await firestore
        .collection(storeCollection)
        .where('uid', isEqualTo: uid)
        .limit(1)
        .get();
    return StoreModel.fromSnap(f.docs.first);
  }


  DocumentReference fetchRef() {
    return firestore.collection(storeCollection).doc(storeIdMock);
  }
}
