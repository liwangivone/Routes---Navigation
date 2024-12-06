import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Codelab',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xFFFF8787)
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Daftar layar berdasarkan bottom navigation.
  final List<Widget> _screens = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen(),
  ];

  // Fungsi untuk mengubah layar berdasarkan index.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFF8787)),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('First Screen'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0); // Sinkronisasi dengan Bottom Navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Second Screen'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Third Screen'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Fourth Screen'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Third',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Fourth',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFF8787),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
