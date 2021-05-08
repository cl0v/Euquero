import 'package:flutter/material.dart';

class SubTitles extends StatelessWidget {
  final String text;
  final size;
  final weight;
  final color;

  SubTitles({this.text, this.size, this.weight, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color),
      ),
    );
  }
}
