import 'package:flutter/material.dart';
import 'package:indonesia_harus_makan/pages/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController hpC = TextEditingController();
  TextEditingController alamatC = TextEditingController();
  TextEditingController unameC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(20),
      children: [
        SizedBox(height: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/umyu.png',
              height: 200,
              width: 200,
            ),
          ],
        ),
        TextField(
          controller: unameC,
          autocorrect: false,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            labelText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          controller: emailC,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            labelText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          controller: passC,
          autocorrect: false,
          obscureText: isHidden,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
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
              )),
        ),
        SizedBox(height: 20),
        TextField(
          controller: hpC,
          autocorrect: false,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            labelText: "No Hp",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(Icons.phone),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          controller: hpC,
          autocorrect: false,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            labelText: "Alamat",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(Icons.location_on),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: Text("Daftar"),
          style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Text("Sudah punya akun?"),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: Text(
                'Login',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.blue),
              ),
            )
          ],
        )
      ],
    ));
  }
}
