import 'package:flutter/material.dart';

class HomeCounter extends StatelessWidget {
  const HomeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return _CounterApplication();
  }
}

class _CounterApplication extends StatefulWidget {
  const _CounterApplication({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<_CounterApplication> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicación contador")),
      body: Center(
        child: Column(
          mainAxisAlignment: .spaceAround,
          mainAxisSize: .max,
          children: [
            Column(
              children: [
                Text("El counter dice", style: TextStyle(fontSize: 30)),
                Text("$_counter", style: TextStyle(fontSize: 30)),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
      floatingActionButtonLocation: .centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: .spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              _insertValue(-1);
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              _insertValue(0, restart: true);
            },
            child: Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
            onPressed: () {
              _insertValue(1);
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  void _insertValue(int value, {bool restart = false}) {
    if (_counter == 0 && value < 0) return;
    if (restart) {
      setState(() {
        _counter = 0;
      });
      return;
    }
    setState(() {
      _counter += value;
    });
  }
}
