import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo_app/widgets/converter.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  ThemeData _lightTheme = ThemeData(
          primaryColor: Colors.teal,
          buttonColor: Colors.teal,
          accentColor: Colors.teal),
      _darkTheme = ThemeData(
          primaryColor: Colors.grey[800],
          buttonColor: Colors.blueGrey,
          accentColor: Colors.teal[800],
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
          scaffoldBackgroundColor: Colors.blueGrey[800]);

  bool _dark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: _dark ? _darkTheme : _lightTheme,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Programación Móvil 2020'),
              actions: [
                Icon(Icons.wb_sunny_outlined),
                Switch(
                    value: _dark,
                    onChanged: (d) {
                      setState(() {
                        _dark = d;
                      });
                    }),
                Icon(Icons.nights_stay_outlined),
              ],
            ),
            body: 
            ChangeNotifierProvider<Notifier>(
              create: (context)=>Notifier(),
            child:Converter())
            ));
  }
}

class Notifier extends ChangeNotifier {
  bool decimalKeyboard = false;
  void switchKeyboard() {
    decimalKeyboard = !decimalKeyboard;
    notifyListeners();
  }
}