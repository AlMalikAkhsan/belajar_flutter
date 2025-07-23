// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ListViewDua extends StatelessWidget {
  const ListViewDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic Dua',
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            color: Colors.blue[(index + 1) * 100],
            child: FlutterLogo(),
          );
        },
      ),
    );
  }
}
