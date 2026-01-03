/**
 * Importaciones de librerias de terceros 
 */
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .spaceAround,
            mainAxisSize: .max,
            children: const <Widget>[
              Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .spaceBetween,
                mainAxisSize: .max,
                children: [
                  Text('We move under cover and we move as one'),
                  Text('We cannot let a stray gunshot give us away'),
                  Text("The code word is 'Rochambeau,' dig me?"),
                  Text('Rochambeau!', style: TextStyle(fontSize: 30.0)),
                ],
              ),
              Column(
                crossAxisAlignment: .end,
                mainAxisAlignment: .spaceBetween,
                mainAxisSize: .max,
                children: [
                  Text('We move under cover and we move as one'),
                  Text('We cannot let a stray gunshot give us away'),
                  Text("The code word is 'Rochambeau,' dig me?"),
                  Text('Rochambeau!', style: TextStyle(fontSize: 30.0)),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(title: Text("Hola mundo"), elevation: 10.0),
      ),
    );
  }
}
