import 'package:flutter/material.dart';

class Mtk02 extends StatelessWidget {
  final double hasil;
  const Mtk02({Key? key, required this.hasil}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Perhitungan')),
      body: Center(
        child: Text(
          'Hasil: $hasil',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}