/**
 * Importaciones de librerias de terceros 
 */
import 'package:firstapp/components/button.dart';
import 'package:firstapp/screens/home_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
