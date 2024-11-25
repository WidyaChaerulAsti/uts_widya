import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Menyimpan index tab yang dipilih
  int _currentIndex = 0;

  // Daftar halaman yang ditampilkan untuk setiap tab
  final List<Widget> _pages = [
    HomeTab(),
    SettingsTab(),
    AccountTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widya Cosmetik"),
      ),
      body: _pages[
          _currentIndex], // Menampilkan halaman berdasarkan tab yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah tab yang dipilih
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

// Halaman Home
class HomeTab extends StatelessWidget {
  final List<String> services = [
    "Mascara",
    "Eyeliner",
    "Loose Powder",
    "Lip Cream",
    "Eye Shadow",
    "Foundation",
    "Blush On",
    "Eye Brow",
  ];

  final List<String> images = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            leading: Image.asset(
              images[index],
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            title: Text(
              services[index],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}

// Halaman Settings
class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Settings Page"));
  }
}

// Halaman Account
class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Account Page"));
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
