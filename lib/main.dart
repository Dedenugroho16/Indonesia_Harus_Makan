// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:indonesia_harus_makan/pages/donasi_page.dart';
import 'package:indonesia_harus_makan/pages/laporan_page.dart';
import 'package:indonesia_harus_makan/pages/login.dart';
import 'package:indonesia_harus_makan/pages/profile_page.dart';
import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late int index;

  List showWidget = [
    HomePage(),
    LaporanPage(),
    DonasiPage(),
    ProfilePage(),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Laporan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined),
            label: "Donasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
