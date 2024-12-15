import 'package:flutter/material.dart';
import 'pegawai.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // Mengubah menjadi StatelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Transfer Variabel',
      home: Pegawai(), // Pastikan kelas ini didefinisikan dalam 'HalamanPertama.dart'
    );
  }
}
