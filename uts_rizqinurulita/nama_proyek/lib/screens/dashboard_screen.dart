import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  final String userName;

  DashboardScreen({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Saya'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi notifikasi (opsional, bisa kosong)
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Halo, $userName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Gambar/Banner
          Image.network(
            'https://png.pngtree.com/png-clipart/20220213/original/pngtree-character-male-and-say-hai-png-image_7269496.png',
            height: 150,
            fit: BoxFit.cover,
          ), // Placeholder banner,
          SizedBox(height: 20),
          // Menu dalam Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Menu Profil
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: Column(
                  children: [Icon(Icons.person, size: 40), Text('Profil')],
                ),
              ),
              // Menu Data
              Column(children: [Icon(Icons.list, size: 40), Text('Data')]),
              // Menu Pengaturan
              Column(
                children: [Icon(Icons.settings, size: 40), Text('Pengaturan')],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
