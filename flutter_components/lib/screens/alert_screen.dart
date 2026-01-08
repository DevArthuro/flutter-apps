import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Initial screen"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Texto de bóton",
            style: TextStyle(fontSize: 18, fontWeight: .bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.close, color: Colors.white),
      ),
    );
  }
}
