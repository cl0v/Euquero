import 'package:flutter/material.dart';

class IconsStar extends StatelessWidget {
  final size;

  IconsStar({this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          size: size,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: size,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: size,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: size,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: size,
          color: Colors.orange,
        ),
      ],
    );
  }
}
