import 'package:flutter/material.dart';

import 'main.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
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
          child: const Text('Go Back to Main Screen'),
        ),
      ),
    );
  }
}