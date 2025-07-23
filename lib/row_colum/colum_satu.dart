import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class ColSatu extends StatelessWidget {
  const ColSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Col 1',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('widget Text 1'),
          Text('widget Text 2'),
          Text('widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Widget Text 6'),
              Text('Widget Text 5'),
              Text('Widget Text 4'),
            ],
          ),
        ],
      ),
    );
  }
}
