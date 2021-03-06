import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloText = new TextStyle(fontSize: 25);
  final conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Titulo'), centerTitle: true),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de taps',
            style: estiloText,
          ),
          Text(
            '$conteo',
            style: estiloText,
          ),
        ],
      )),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //conteo = conteo + 1
        },
      ),
    );
  }
}
