import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto/Avatar
            Image.network(
              'https://png.pngtree.com/png-clipart/20221216/original/pngtree-passport-photo-cartoon-design-png-image_8750030.png',
              height: 100,
              width: 100,
            ), // Placeholder avatar
            SizedBox(height: 20),
            // Data dalam Column
            Text('Nama: Rizqi Nurulita', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('NPM: 23670025', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'Email: rizqinurulita9@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Row untuk info lain
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Prodi: Informatika'), Text('Semester: 5')],
            ),
            SizedBox(height: 20),
            // Tombol Kembali
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke Dashboard
              },
              child: Text('Kembali ke Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
