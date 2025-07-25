// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tgllahir, agama;

  OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tgllahir,
    required this.agama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Output Form',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    Icons.assignment_ind_rounded,
                    size: 60,
                    color: Colors.blueAccent,
                  ),
                ),
                const SizedBox(height: 16),
                _buildDetailTile(Icons.person, "Nama", nama),
                _buildDetailTile(Icons.wc, "Jenis Kelamin", jk),
                _buildDetailTile(Icons.cake, "Tanggal Lahir", tgllahir),
                _buildDetailTile(Icons.self_improvement, "Agama", agama),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailTile(IconData icon, String label, String value) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
      leading: Icon(icon, color: Colors.blue),
      title: Text(label),
      subtitle: Text(value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
