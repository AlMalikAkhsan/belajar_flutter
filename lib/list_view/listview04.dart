import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

  final List<ListItem> itemList = [
    ListItem(Colors.red, 'partai banteng'),
    ListItem(Colors.blue, 'partai joged'),
    ListItem(Colors.green, 'partai kabah'),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic Empat',
      body: SizedBox(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 100,
              color: itemList[index].color,
              child: Center(
                child: Text(itemList[index].text),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black,
            );
          },
          itemCount: itemList.length,
        ),
      ),
    );
  }
}
