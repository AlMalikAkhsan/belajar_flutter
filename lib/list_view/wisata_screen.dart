// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:belajar_flutter/list_view/lisvtview05.dart';
import 'package:flutter/material.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  //data
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "/images/ubud.jpg",
      "desc": "Ubud adalah salah satu di Bali ...",
    },
    {
      "nama": "Shibuya",
      "kota": "Shibuya",
      "image": "/images/tokyo.jpg",
      "desc": "Shibuya adalah salah satu di Negara Jepang ...",
    },
    {
      "nama": "Pantai Kuta",
      "kota": "Bali",
      "image": "/images/pantai.jpg",
      "desc": "Pantai Kuta adalah salah satu di Bali ...",
    },
    {
      "nama": "Gunung Rinjani",
      "kota": "Lombok",
      "image": "/images/rinjani.jpg",
      "desc": "Gunung Rinjani adalah salah satu gunung di Lombok ...",
    },
    {
      "nama": "Raja Ampat",
      "kota": "Bali",
      "image": "/images/rajaampat.jpg",
      "desc": "Raja Ampat adalah salah satu di Pulai Bali ...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blue, Colors.green],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => 
                      DetailWisataScreen(
                        name : wisataData[index]['nama'],
                        kota : wisataData[index]['kota'],                        
                        image : wisataData[index]['image'],
                        desc : wisataData[index]['desc'],
                      ),
                    ),
                  );
                },               
                 child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 250,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${wisataData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),                    
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Text(
                      "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

