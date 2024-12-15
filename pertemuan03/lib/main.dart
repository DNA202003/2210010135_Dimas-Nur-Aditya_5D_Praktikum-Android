import 'package:flutter/material.dart';
import 'studikasus03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Praktikum 03',
      home: Studikasus03()
    );
  }
}
