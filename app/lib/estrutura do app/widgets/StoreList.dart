import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "Pastelaria teste",
              style: TextStyle(fontSize: 24),
            ),
            subtitle: Text("O melhor pastel da cidade"),
            leading: Icon(Icons.store),
            trailing: Icon(Icons.add),
            contentPadding: EdgeInsets.all(50),
            isThreeLine: false,
            enabled: true,
            onTap: () {},
          );
        });
  }
}
