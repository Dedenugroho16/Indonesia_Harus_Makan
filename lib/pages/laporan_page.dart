import 'package:flutter/material.dart';

class LaporanPage extends StatefulWidget {
  @override
  _LaporanPageState createState() => _LaporanPageState();
}

class _LaporanPageState extends State<LaporanPage> {
  List<Map<String, dynamic>> laporanKeuangan = [
    {"tanggal": "01-01-2023", "jenis": "Masuk", "jumlah": 100000},
    {"tanggal": "02-01-2023", "jenis": "Keluar", "jumlah": -50000},
    {"tanggal": "03-01-2023", "jenis": "Keluar", "jumlah": -30000},
    // tambahkan data laporan keuangan lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan Keuangan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DataTable(
              columns: const [
                DataColumn(label: Text('Tanggal')),
                DataColumn(label: Text('Jenis')),
                DataColumn(label: Text('Jumlah')),
              ],
              rows: laporanKeuangan
                  .map(
                    (data) => DataRow(
                      cells: [
                        DataCell(Text(data['tanggal'])),
                        DataCell(Text(data['jenis'])),
                        DataCell(Text(data['jumlah'].toString())),
                      ],
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Total Saldo: ${hitungTotalSaldo().toString()}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  double hitungTotalSaldo() {
    double totalSaldo = 0;
    for (var data in laporanKeuangan) {
      totalSaldo += data['jumlah'];
    }
    return totalSaldo;
  }
}
