import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Helloo'),
              backgroundColor: Colors.blueAccent,
            ),
            body: Center(
              child: Text(
                'Hello Flutter',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 214, 100),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue,
                ),
              ),
            )));
  }
}
