import 'package:flutter/material.dart';
import 'package:flutter_pagina/mes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<String> meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai'];
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mes(meses[0]),
                  ),
                );
              },
              child: const Text('Hello World!'),
            ),
          ],
        ),
      ),
    );
  }
}
