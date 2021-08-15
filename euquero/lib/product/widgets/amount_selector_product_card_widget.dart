import 'package:euquero/product/product_model.dart';
import 'package:flutter/material.dart';

class AmountSelectorProductCardWidget extends StatefulWidget {
  final ProductModel product;

  const AmountSelectorProductCardWidget({Key? key, required this.product})
      : super(key: key);
  @override
  _AmountSelectorProductCardWidgetState createState() =>
      _AmountSelectorProductCardWidgetState();
}

class _AmountSelectorProductCardWidgetState
    extends State<AmountSelectorProductCardWidget> {
  int amount = 0;

  remove() {
    setState(() {
      if (amount > 0) amount--;
    });
  }

  add() {
    setState(() {
      amount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('${widget.product.title} (R\$${widget.product.price},00)'),
        ButtonBar(
          children: [
            IconButton(onPressed: remove, icon: Icon(Icons.remove)),
            Text(
              '$amount',
            ),
            IconButton(onPressed: add, icon: Icon(Icons.add)),
          ],
        )
      ],
    );
  }
}
