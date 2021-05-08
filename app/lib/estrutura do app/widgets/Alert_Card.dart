import 'package:flutter/material.dart';

class AlertCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String subtitle;
  final size;

  AlertCard({this.name, this.imagePath, this.subtitle, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Text(
                    subtitle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
