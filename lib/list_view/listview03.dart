import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ListViewTiga extends StatelessWidget {
   ListViewTiga({super.key});

  final List<Color> colorlist = [Colors.red, Colors.green, Colors.blue];
  final List<String> partaiList = [
    'Partai Banteng',
    'Partai Kabah',
    'Partai Joged',
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic Tiga',
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorlist.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                width: 200,
                height: 300,
                color: colorlist[index],
                child: Text(partaiList[index]),
              );
            }),
      ),
    );
  }
}
