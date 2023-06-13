// ini adalah halaman home untuk aplikasi Indonesia Harus Makan

// coba branch dan pull request

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:indonesia_harus_makan/pages/login.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/1.jpeg"), fit: BoxFit.cover),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/2.jpeg"), fit: BoxFit.cover),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/3.jpeg"), fit: BoxFit.cover),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/4.jpeg"), fit: BoxFit.cover),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/5.jpeg"), fit: BoxFit.cover),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/6.jpeg"), fit: BoxFit.cover),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, elevation: 0),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => login()));
              },
              child: Text("Login"),
            )
          ],
        ),
        drawer: Drawer(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              color: Colors.orange,
              width: double.infinity,
              height: 100,
              child: Text(
                "Dashboard Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      print("Home Diklik");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Donasi Diklik");
                    },
                    leading: Icon(Icons.account_balance_wallet_rounded),
                    title: Text("Donasi"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Laporan Diklik");
                    },
                    leading: Icon(Icons.document_scanner_rounded),
                    title: Text("Laporan"),
                  ),
                ],
              ),
            )
          ],
        )),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hello Username!",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Welcome to UMYU",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(height: 100),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/email.png"),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   color: Colors.orange,
                          //   width: 1,
                          // ),
                        ),
                      ),
                      SizedBox(height: 100, width: 20),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/shopping-cart.png"),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   color: Colors.orange,
                          //   width: 1,
                          // ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.orange,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 100, width: 20),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/list.png"),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   color: Colors.orange,
                          //   width: 1,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    autocorrect: false,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      hintText: "Find your item",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        height: 150,
                        color: Colors.transparent,
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Image.asset("assets/img/logo.png"),
                            Container(
                              width: 210,
                              height: 150,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, right: 8.0, bottom: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Indonesia Harus Makan",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Gerakan sosial berbagi makanan secara gratis bagi mereka yang membutuhkan",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),

                    // carousel slider
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselSlider(
                            items: myData,
                            carouselController: _controller,
                            options: CarouselOptions(
                                height: 300,
                                viewportFraction: 1,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                aspectRatio: 16 / 9,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: myData.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.white)
                                          .withOpacity(_current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ]),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
