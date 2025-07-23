// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter/list_view/listview04.dart';
import 'package:belajar_flutter/list_view/wisata_screen.dart';
import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BelajarFlutter(title: '', body: Text('')));
}

class BelajarFlutter extends StatelessWidget {
  //parameter
  final String title;
  final Widget body;

  const BelajarFlutter({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WisataScreen(),
    );
  }
}

class HelloGanteng extends StatelessWidget {
  const HelloGanteng({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Center(
        child: Text(
          'Hello Brooo!!',
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
