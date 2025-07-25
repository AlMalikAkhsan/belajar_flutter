// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:belajar_flutter/container/tugasdetail.dart';
import 'package:flutter/material.dart';

class TugasBaru extends StatelessWidget {
  TugasBaru({super.key});

  final List<Map<String, dynamic>> tugasData = [
    {
      "nama": "Ali",
      "gender": "pria",
      "image": "images/human01.jpeg",
      "point": "120",
      "level": "Pro",
      "Bio": "Anjay muehehehehhe",
      "Zodiac": "Sagitarius",
    },
    {
      "nama": "Siti",
      "gender": "wanita",
      "image": "images/human01.jpeg",
      "point": "85",
      "level": "Beginner",
      "Bio": "Hehe lucu bgt",
      "Zodiac": "Cancer",
    },
    {
      "nama": "Kiro",
      "gender": "pria",
      "image": "images/human01.jpeg",
      "point": "200",
      "level": "Pro",
      "Bio": "Anjay muehehehehhe",
      "Zodiac": "Sagitarius",
    },
    {
      "nama": "Kaela",
      "gender": "wanita",
      "image": "images/human01.jpeg",
      "point": "55",
      "level": "Beginner",
      "Bio": "Hehe lucu bgt",
      "Zodiac": "Cancer",
    },
    {
      "nama": "Salman",
      "gender": "pria",
      "image": "images/human01.jpeg",
      "point": "150",
      "level": "Pro",
      "Bio": "Anjay muehehehehhe",
      "Zodiac": "Taurus",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.white, Colors.green],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: tugasData.length,
          itemBuilder: (context, index) {
            final item = tugasData[index];
            return Container(
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Row(
                children: [
                  // Foto profil
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(item["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),

                  // Nama & Point
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["nama"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Point: ${item["point"]}",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Tombol Detail
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailTugas(data: item),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child:
                        Text("Detail", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
