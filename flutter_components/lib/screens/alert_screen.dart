import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Alerta UI IOS"),
          content: Column(
            mainAxisSize: .min,
            children: [
              Text("Este es el contenido de la alerta"),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar", style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Enviar", style: TextStyle(color: Colors.indigo)),
            ),
          ],
        );
      },
    );
  }

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: .circular(20)),
          elevation: 0,
          title: Center(child: Text("Titulo")),
          content: Column(
            mainAxisSize: .min,
            children: [
              Text("Este es el contenido de la alerta"),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: .spaceBetween,
              mainAxisSize: .max,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancelar"),
                ),
                TextButton(onPressed: () {}, child: Text("Enviar")),
              ],
            ),
          ],
        );
      },
    );
  }

  void defineUIPlatform(BuildContext context) {
    if (Platform.isAndroid) {
      displayDialog(context);
    } else if (Platform.isIOS) {
      displayDialogIOS(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Initial screen"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            defineUIPlatform(context);
          },
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
