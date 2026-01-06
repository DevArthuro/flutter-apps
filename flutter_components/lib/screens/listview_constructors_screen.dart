import 'package:flutter/material.dart';

class ListViewConstructorScreen extends StatelessWidget {
  static const options = ["Ironman", "Batman", "Superman"];

  const ListViewConstructorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Initial screen"),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          leading: Icon(Icons.arrow_drop_down_outlined),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {
            print("Hola mundo $index");
          },
        ),
        separatorBuilder: (_, __) => Divider(),
        itemCount: options.length,
      ),
    );
  }
}
