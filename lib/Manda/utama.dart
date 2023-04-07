import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List ShowWidget = [
    Center(
      child: Text("HOME"),
    ),
    Center(
      child: Text("NOTIF"),
    ),
    Center(
      child: Text("PROFILE"),
    ),
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("INDONESIA HARUS MAKAN"),
          backgroundColor: Color.fromARGB(226, 103, 0, 14),
          leading: Image.asset("./images/imgss/logo.png")),
      body: ShowWidget[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(226, 103, 0, 14),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black26,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "notification",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
