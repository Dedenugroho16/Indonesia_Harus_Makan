// ini adalah halaman home untuk aplikasi Indonesia Harus Makan

// coba branch dan pull request

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text('Home'),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              elevation: 0
            ),
            onPressed: (){}, 
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
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/bg.png"), fit: BoxFit.cover),
            ),
          ),

          ListView(
            children: [
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
                            padding: const EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Indonesia Harus Makan", 
                                  style: TextStyle(
                                    fontSize: 12, 
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  "Gerakan sosial berbagi makanan secara gratis bagi mereka yang membutuhkan",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                    
                  ),
                  


                ],
              )
            ],
          ),
        ],
      )

    );
  }
}
