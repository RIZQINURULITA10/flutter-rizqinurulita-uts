import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nama_proyek/main.dart';
import 'package:nama_proyek/screens/login_screen.dart'; // Ganti dengan nama proyek kamu

void main() {
  testWidgets('Login screen displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    // Verify that the login screen elements are present.
    expect(find.text('Selamat Datang'), findsOneWidget); // Judul
    expect(find.byIcon(Icons.person), findsOneWidget); // Icon username
    expect(find.byIcon(Icons.lock), findsOneWidget); // Icon password
    expect(find.text('Login'), findsOneWidget); // Tombol login
  });
}
