import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloText = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stafull'), centerTitle: true),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de taps',
              style: _estiloText,
            ),
            Text(
              '$_conteo',
              style: _estiloText,
            ),
          ],
        )),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(
        width: 30,
      ),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: () {
          setState(() {
            _conteo = 0;
          });
        },
      ),
      Expanded(
          child: SizedBox(
        width: 30,
      )),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () {
          setState(() {
            _conteo--;
          });
        },
      ),
      SizedBox(
        width: 30,
      ),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _conteo++;
          });
        },
      )
    ]);
  }
}
