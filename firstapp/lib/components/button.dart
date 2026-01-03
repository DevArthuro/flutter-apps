import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text("Add"),
    );
  }
}

class ButtonExampleWithState extends StatefulWidget {
  const ButtonExampleWithState({super.key});

  @override
  State<ButtonExampleWithState> createState() => _FloatingStateButtonExample();
}

class _FloatingStateButtonExample extends State<ButtonExampleWithState> {
  static const List<(Color?, Color? background, ShapeBorder?)> customizations =
      <(Color?, Color?, ShapeBorder?)>[
        (null, null, null), // The FAB uses its default for null parameters.
        (null, Colors.green, null),
        (Colors.white, Colors.green, null),
        (Colors.white, Colors.green, CircleBorder()),
      ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      onPressed: () {
        setState(() {
          index = (index + 1) % customizations.length;
        });
      },
      foregroundColor: customizations[index].$1,
      backgroundColor: customizations[index].$2,
      shape: customizations[index].$3,
      child: Icon(Icons.navigation),
    );
  }
}
