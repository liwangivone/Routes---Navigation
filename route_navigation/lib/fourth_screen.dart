import 'package:flutter/material.dart';
import 'main.dart'; 

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fourth Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi langsung ke MainScreen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
              (route) => false, // Menghapus semua rute sebelumnya
            );
          },
          child: const Text('Back to Main Screen'),
        ),
      ),
    );
  }
}
