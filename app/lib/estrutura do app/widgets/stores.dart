import 'package:flutter/material.dart';

class Stores extends StatelessWidget {
  final String nome;
  final String frase;
  final String status;
  final String tempo;
  final String preco;

  Stores({this.nome, this.frase, this.status, this.tempo, this.preco});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white38,
            border: Border.all(
              width: 1,
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.store,
                size: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Text(
                    nome,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Text(frase),
                  Text(
                    status,
                    style: TextStyle(color: Colors.green),
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text("5"),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.lock_clock),
                      Text(tempo),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.attach_money),
                      Text("Preço médio: R\$:" + preco),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
