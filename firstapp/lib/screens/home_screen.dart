import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('We move under cover and we move as one'),
            Text('Through the night, we have one shot to live another day'),
            Text('We cannot let a stray gunshot give us away'),
            Text('We will fight up close, seize the moment and stay in it'),
            Text("It's either that or meet the business end of a bayonet"),
            Text("The code word is 'Rochambeau,' dig me?"),
            Text(
              'Rochambeau!',
              style: DefaultTextStyle.of(
                context,
              ).style.apply(fontSizeFactor: 2.0),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Hola mundo"), elevation: 10.0),
    );
  }
}
