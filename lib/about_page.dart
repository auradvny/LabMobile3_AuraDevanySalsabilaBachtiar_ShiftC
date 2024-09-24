import 'package:flutter/material.dart';
import 'package:prakpemmob_tugaspert3/side_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.teal, // Mengubah warna AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
            16.0), // Menambah padding agar konten lebih rapi
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.info_outline,
              color: Colors.teal,
              size: 100, // Menggunakan ikon besar sebagai pengganti gambar
            ),
            const SizedBox(height: 20), // Menambah spasi antara ikon dan teks
            const Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal, // Mengubah warna teks
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Aplikasi ini dibuat untuk memberikan pengalaman terbaik kepada pengguna dalam mengelola data multimedia.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30), // Menambah jarak
            Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Fitur Utama:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(height: 15),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.teal),
                      title: Text('Pengelolaan Data CCTV'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.teal),
                      title: Text('Pengelolaan Data Video'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.teal),
                      title: Text('Komentar dan Diskusi'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Spasi antar elemen
          ],
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
