import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset(
              'assets/img/logo.png',
              height: 300,
              width: 300,
            ),
            Text(
              "Welcome !",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailC,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.red[900],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Username",
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 205, 202, 202)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                // prefix: Padding(
                //   padding: const EdgeInsets.only(right: 20),
                //   child: Icon(Icons.email),
                // )
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passC,
              autocorrect: false,
              obscureText: isHidden,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.red[900],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Password",
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 205, 202, 202)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.vpn_key),
                suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print(
                    "LOGIN DENGAN : EMAIL (${emailC.text}) & PASS (${passC.text})");
              },
              child: Text("Sign In"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(height: 50),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Belum punya akun? ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Daftar",
                      style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
