import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage("assets/manda.JPG"),
                  ),
                  border: Border.all(
                    color: Colors.orange,
                    width: 3,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Choose File",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Text('Username'),
                subtitle: Text('username'),
                trailing: Icon(Icons.person_outline),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
              ListTile(
                title: Text('username@gmail.com'),
                subtitle: Text('email'),
                trailing: Icon(Icons.email),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
              ListTile(
                title: Text('0890 xxxx xxxx'),
                subtitle: Text('phone'),
                trailing: Icon(Icons.phone),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
              ListTile(
                title: Text('10906097888'),
                subtitle: Text('user id'),
                trailing: Icon(Icons.list),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
              ListTile(
                title: Text('2003 Aug 23'),
                subtitle: Text('date of birth'),
                trailing: Icon(Icons.date_range),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(Icons.settings_outlined),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
              ListTile(
                textColor: Colors.red,
                iconColor: Colors.red,
                title: Text('Log out'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // TODO: Navigate to promo detail page
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}