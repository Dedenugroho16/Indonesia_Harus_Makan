import 'package:flutter/material.dart';

class BankButton {
  final String bankName;
  final String imagePath;

  BankButton(this.bankName, this.imagePath);
}

class DonasiPage extends StatelessWidget {
  final List<BankButton> bankButtons = [
    BankButton('Bank A', 'assets/img/bri.png'),
    BankButton('Bank B', 'assets/img/bca.png'),
    BankButton('Bank C', 'assets/img/mandiri.png'),
    BankButton('Dompet Digital X', 'assets/img/dana.png'),
    BankButton('Dompet Digital Y', 'assets/img/paypal.png'),
    BankButton('Dompet Digital Z', 'assets/img/gopay.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Donasi'),
        ),
        body: Center(
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: bankButtons.map((bank) {
              return SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    // Lakukan aksi saat tombol ditekan
                  },
                  child: Image.asset(bank.imagePath),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}