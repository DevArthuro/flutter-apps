import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Initial screen"), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text("Example Card"),
                  leading: Icon(Icons.access_alarm, color: AppTheme.primary),
                  subtitle: Text(
                    "Incididunt magna aliqua laborum cupidatat enim velit nostrud elit id labore nostrud occaecat.",
                  ),
                ),

                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: .end,
                    children: [
                      TextButton(onPressed: () {}, child: Text("Cancel")),

                      TextButton(onPressed: () {}, child: Text("Ok")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
