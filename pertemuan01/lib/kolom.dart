import 'package:flutter/material.dart';

class Kolom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Belajar Kolom'),
      ),
      body: Container(
          color: Colors.red[400],
          child: Column(
            children: [
              Text(
                'Flutter 01',
                style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
              ),
              Text(
                'Flutter 01',
                style: TextStyle(fontSize: 30, color: Colors.yellow[400]),
              ),
              Text(
                'Flutter 01',
                style: TextStyle(fontSize: 30, color: Colors.yellow[500]),
              ),
              Text(
                'Flutter 01',
                style: TextStyle(fontSize: 30, color: Colors.yellow[600]),
              ),
              Text(
                'Flutter 01',
                style: TextStyle(fontSize: 30, color: Colors.yellow[700]),
              ),
              Container(
                color: Colors.amber,
                height: 80,
                width: 120,
              )
            ],
          )),
    );
  }
}
