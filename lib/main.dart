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
      home: HomePage(),
    );
  }
}
