import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "11", _decimal = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          Container(
              alignment: Alignment.center, child: Text("\nBinary -> Decimal")),
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text('$_binary',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                      fontSize: 35))),
          Center(child: Text("$_decimal", style: TextStyle(fontSize: 20))),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FloatingActionButton(
                child: Text("1"),
                onPressed: () {
                  setState(() {
                    _binary += '1';
                    _decimal = int.parse(_binary, radix: 2).toRadixString(10);
                  });
                }),
            Text('    '),
            FloatingActionButton(
                child: Text("0"),
                onPressed: () {
                  setState(() {
                    _binary += '0';
                    _decimal = int.parse(_binary, radix: 2).toRadixString(10);
                  });
                })
          ]),
          Container(
              padding: EdgeInsets.all(80),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    setState(() {
                      _binary = '';
                      _decimal = '';
                    });
                  },
                  child: Text("Reset",
                      style:
                          new TextStyle(fontSize: 20.0, color: Colors.white))))
        ]));
  }
}
