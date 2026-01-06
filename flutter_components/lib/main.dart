import 'package:flutter/material.dart';
import 'package:flutter_components/screens/alert_screen.dart';
import 'package:flutter_components/screens/card_screen.dart';

import 'package:flutter_components/screens/home_screen.dart';
import 'package:flutter_components/screens/listview_constructors_screen.dart';
import 'package:flutter_components/screens/listview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/list-constructor-view',
      routes: {
        '/home': (BuildContext buildContext) => const HomeScreen(),
        '/alert': (BuildContext buildContext) => const AlertScreen(),
        '/card': (BuildContext buildContext) => const CardScreen(),
        '/list-view': (BuildContext buildContext) => const ListViewScreen(),
        '/list-constructor-view': (BuildContext buildContext) =>
            const ListViewConstructorScreen(),
      },
    );
  }
}
