import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Nihongo Apps',
      body: Center(
        // Membuat seluruh konten berada di tengah layar
        child: Container(
          width: 600, // Lebar maksimal konten, biar tidak mepet layar
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Menengahkan isi
            children: [
              const Text(
                'Negara Terbaik',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              const Text(
                'Jepang',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 62, 62, 62),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Gambar besar atas
              Container(
                height: 160,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://asset.kompas.com/crops/HuTA7glPpAgfKOF3wgraoQ-DsY0=/0x0:740x493/1200x800/data/photo/2020/04/23/5ea1615da1f8d.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Dua gambar kecil di tengah
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe1MATGKt--QsIm4S6OcxyR7_xeNlGUK9A6A&s'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.bisnis.com/posts/2024/03/03/1745995/resesi_jepang_1708912294.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Tiga gambar kecil di bawah
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://awsimages.detik.net.id/community/media/visual/2025/04/15/potret-suasana-jepang-yang-populasi-penduduknya-menyusut-1744687309217_169.jpeg?w=700&q=90'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn1.katadata.co.id/media/images/thumb/2023/01/26/Cara_Kerja_di_Jepang-2023_01_26-17_11_14_48c25cbd68f54b685457b4ad60ad861a_960x640_thumb.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://awsimages.detik.net.id/community/media/visual/2022/03/24/advjapan-1.jpeg?w=600&q=90'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
