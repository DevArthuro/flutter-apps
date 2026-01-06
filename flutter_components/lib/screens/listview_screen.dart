import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  static const options = ["Ironman", "Batman", "Superman"];

  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Initial screen"), centerTitle: true),
      body: ListView(
        children: options
            .map(
              (option) => ListTile(
                title: Text(option),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                leading: Icon(Icons.arrow_drop_down_outlined),
              ),
            )
            .toList(),
      ),
    );
  }
}
