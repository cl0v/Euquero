import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 3 / 2,
          child: Image.asset(
            "/home/rntcursos/developer/Euquero/Euquero/app/assets/images/breakfast.jpeg",
          ),
        ),
        Container(
          color: Colors.white12,
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          child: Text(
            "Cafeteria mas não tem!",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
