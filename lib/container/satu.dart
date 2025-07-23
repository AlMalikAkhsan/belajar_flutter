// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Container Satu',
        body: Container(
          width: 200,
          height: 100,
          margin: EdgeInsets.all(10),
          color: Colors.blue,
          child: Center(
            child: Text(
              "Hello Broo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ));
  }
}
