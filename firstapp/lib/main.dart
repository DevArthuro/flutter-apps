/**
 * Importaciones de librerias de terceros 
 */
import 'package:firstapp/screens/home_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeCounter());
  }
}
