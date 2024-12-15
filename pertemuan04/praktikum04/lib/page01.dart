import 'package:flutter/material.dart';
import 'page02.dart'; // Pastikan import Halaman Kedua benar

class Page01 extends StatefulWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  State<Page01> createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  final String nama = "Dwi Dian Permatasari";
  final String npm = "201901027";
  final String prodi = "Sistem Informasi";
  final String semester = "V";
  final List<String> listprogram = ["PHP", "Flutter", "C++"];
  final Map<String, dynamic> mapData = {
    "IPS-1": 3.54,
    "IPS-2": 3.35,
    "TPS-3": 3.20,
    "Grade": "Memuaskan",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Pertama')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page02(
                  npm: npm,
                  nama: nama,
                  prodi: prodi,
                  semester: semester,
                  pemrograman: listprogram,
                  mapData: mapData,
                ),
              ),
            );
          },
          child: const Text("Menuju Halaman Ke-2"),
        ),
      ),
    );
  }
}
