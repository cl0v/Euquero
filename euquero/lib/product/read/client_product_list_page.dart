import 'package:flutter/material.dart';

import 'package:euquero/product/product_repository.dart';
import 'package:euquero/product/widgets/amount_selector_product_card_widget.dart';

import '../product_model.dart';

///Exibe os produtos cadastrados na loja para o usuário
class ClientProductListPage extends StatefulWidget {
  final String storeId;
  const ClientProductListPage({
    Key? key,
    required this.storeId,
  }) : super(key: key);

  @override
  _ClientProductListPageState createState() => _ClientProductListPageState();
}

class _ClientProductListPageState extends State<ClientProductListPage> {
  ProductRepository repository = ProductRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProductModel>>(
          future: repository.readFromStoreId(widget.storeId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                final List<ProductModel> productList = snapshot.data!;
                return ListView(
                  children: productList
                      .map((e) => AmountSelectorProductCardWidget(product: e))
                      .toList(),
                );
              }
            }
            return Center(child: CircularProgressIndicator(),);
          }),
    );
  }
}
