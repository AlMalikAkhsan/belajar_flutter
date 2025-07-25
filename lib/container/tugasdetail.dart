import 'package:flutter/material.dart';

class DetailTugas extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailTugas({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail ${data['nama']}"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Foto profil besar
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(data["image"]),
                ),
                SizedBox(height: 16),

                Text(
                  data["nama"],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Divider(height: 30),

                buildInfoRow("Gender", data["gender"]),
                buildInfoRow("Point", data["point"]),
                buildInfoRow("Level", data["level"]),
                buildInfoRow("Zodiac", data["Zodiac"]),
                SizedBox(height: 16),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bio",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(height: 4),
                Text(data["Bio"]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
