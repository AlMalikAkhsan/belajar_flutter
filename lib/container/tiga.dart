import 'package:flutter/material.dart';
import 'dua.dart'; // pastikan import halaman tujuan

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Container Tiga'),
        centerTitle: true,
      ),
      body: Container(
        // Container Luar
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Colors.greenAccent, Colors.blueGrey, Colors.redAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: const [BoxShadow(color: Colors.black, spreadRadius: 2)],
        ),
        child: Container(
          // Container Tengah
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [Colors.redAccent, Colors.blueGrey, Colors.greenAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: const [BoxShadow(color: Colors.black, spreadRadius: 2)],           
          ),
          child: Container(
            // Container Dalam
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color.fromARGB(255, 132, 255, 31), Colors.blueGrey, Color.fromARGB(255, 72, 44, 44)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(color: Colors.black, spreadRadius: 2)
              ],             
            ),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerDua()),
                  );
                },
                child: const Text(
                  'Ke Container 2',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
