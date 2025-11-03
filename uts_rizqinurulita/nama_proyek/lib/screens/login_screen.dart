import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;

  void _login() {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      setState(() {
        _errorMessage = 'Email dan password tidak boleh kosong!';
      });
    } else {
      setState(() {
        _errorMessage = null;
      });
      // Navigasi ke Dashboard
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DashboardScreen(userName: _emailController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Deskripsi
            Text(
              'Aplikasi untuk mengelola data mahasiswa.',
              style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 243, 145, 128)),
            ),
            SizedBox(height: 20),
            // Gambar (logo dummy)
            Image.network(
              'https://png.pngtree.com/png-clipart/20221231/original/pngtree-cartoon-style-female-user-profile-icon-vector-illustraton-png-image_8836450.png',
              height: 100,
              width: 100,
            ), // Placeholder logo
            SizedBox(height: 20),
            // TextField Email/Username
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email/Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // TextField Password
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Error message
            if (_errorMessage != null)
              Text(_errorMessage!, style: TextStyle(color: const Color.fromARGB(255, 134, 14, 6))),
            SizedBox(height: 20),
            // Tombol Login
            ElevatedButton(onPressed: _login, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
