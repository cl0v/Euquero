import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:euquero/constants/firestore.dart';
import 'package:euquero/product/read/client_product_list_page.dart';
import 'package:euquero/store/store_model.dart';
import 'package:euquero/utils/navigation.dart';
import 'package:flutter/material.dart';

class ClientRepository {
  final firestore = FirebaseFirestore.instance;
  Stream<List<StoreModel>> fetchStoreList() {
    return firestore.collection(storeCollection).snapshots().map(
          (query) => query.docs.map((doc) => StoreModel.fromSnap(doc)).toList(),
        );
  }
}

class StoreListPage extends StatefulWidget {
  const StoreListPage({Key? key}) : super(key: key);

  @override
  _StoreListPageState createState() => _StoreListPageState();
}

class _StoreListPageState extends State<StoreListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<StoreModel>>(
        stream: ClientRepository().fetchStoreList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              final l = snapshot.data!;
              return ListView.builder(
                itemCount: l.length,
                itemBuilder: (context, index) {
                  final StoreModel store = l[index];
                  return ListTile(
                    onTap: () => push(
                        context,
                        ClientProductListPage(
                          storeId: store.reference.id,
                          )),
                    title: Text(store.title),
                  );
                },
              );
            }
          }
          return Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
