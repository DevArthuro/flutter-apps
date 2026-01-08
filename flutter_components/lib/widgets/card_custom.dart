import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}
