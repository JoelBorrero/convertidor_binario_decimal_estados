import 'package:demo_app/screens/myhome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "11", _decimal = "";

  @override
  Widget build(BuildContext context) {
    return Consumer<Notifier>(
      builder: (context, notifier, widget) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  child: TextButton(
                      child: Text('\nBinary -> Decimal'),
                      onPressed: () {
                        notifier.switchKeyboard();
                      })),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('$_binary',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(
                              int.parse("#FF5722".replaceAll('#', '0xff'))),
                          fontSize: 35))),
              Center(child: Text("$_decimal", style: TextStyle(fontSize: 20))),
              notifier.decimalKeyboard
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          FloatingActionButton(
                              child: Text("1"),
                              onPressed: () {
                                setState(() {
                                  _binary += '1';
                                  _decimal = int.parse(_binary, radix: 2)
                                      .toRadixString(10);
                                });
                              }),
                          Text('    '),
                          FloatingActionButton(
                              child: Text("0"),
                              onPressed: () {
                                setState(() {
                                  _binary += '0';
                                  _decimal = int.parse(_binary, radix: 2)
                                      .toRadixString(10);
                                });
                              })
                        ])
                  : Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                  child: Text("1"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '1';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("4"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '4';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("7"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '7';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  onPressed: null,
                                  backgroundColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  elevation: 0)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FloatingActionButton(
                                  child: Text("2"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '2';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("5"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '5';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("8"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '8';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("0"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '0';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                  child: Text("3"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '3';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("6"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '6';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Text("9"),
                                  onPressed: () {
                                    setState(() {
                                      _decimal += '9';
                                      _binary = int.parse(_decimal, radix: 10)
                                          .toRadixString(2);
                                    });
                                  }),
                              FloatingActionButton(
                                  onPressed: null,
                                  backgroundColor:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  elevation: 0)
                            ],
                          )
                        ],
                      ),
                    ),
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
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white))))
            ]));
      },
    );
  }
}
