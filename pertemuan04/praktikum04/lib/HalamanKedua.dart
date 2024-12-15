import 'package:flutter/material.dart';
class Halamankedua extends StatefulWidget {
  const Halamankedua({super.key});

  @override
  State<Halamankedua> createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<Halamankedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: Text(
          'INI HALAMAN KEDUA',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
