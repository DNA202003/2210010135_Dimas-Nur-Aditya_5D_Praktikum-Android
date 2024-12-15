import 'package:flutter/material.dart';
import 'contohstatelesswidget.dart';


void mian(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  //This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Widget',
      home: ContohStatelessWidget(),
    );
  }
}