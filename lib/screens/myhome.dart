import 'package:demo_app/widgets/converter.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  ThemeData lightTheme = ThemeData(
          primaryColor: Colors.teal,
          buttonColor: Colors.teal,
          accentColor: Colors.teal),
      darkTheme = ThemeData(
          primaryColor: Colors.grey[800],
          buttonColor: Colors.blueGrey,
          accentColor: Colors.teal[800],
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
          scaffoldBackgroundColor: Colors.blueGrey[800]);

  bool dark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: dark ? darkTheme : lightTheme,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Programación Móvil 2020'),
              actions: [
                IconButton(
                    icon: Icon(dark
                        ? Icons.wb_sunny_outlined
                        : Icons.nights_stay_outlined),
                    onPressed: () {
                      setState(() {
                        dark = !dark;
                      });
                    })
              ],
            ),
            body: Center(child: Converter())));
  }
}
