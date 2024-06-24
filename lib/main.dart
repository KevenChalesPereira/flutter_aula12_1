import 'package:flutter/material.dart';
import 'package:flutter_pagina/mes.dart';
//import 'package:flutter_pagina/mes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<String> meses = [
    'Jan',
    'Fev',
    'Mar',
    'Abr',
    'Mai',
    'Jun',
    'Jul',
    'Ago',
    'Set',
    'Out',
    'Nov',
    'Dez'
  ];
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                width: 500,
                height: 500,
                child: ListView.builder(
                  itemCount: meses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(meses[index]),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mes(meses[index])));
                      },
                    );
                  },
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
