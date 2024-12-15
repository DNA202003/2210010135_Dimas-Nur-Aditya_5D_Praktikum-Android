import 'package:flutter/material.dart';

class ContohStatelessWidget extends StatelessWidget {
  final TextEditingController _controllerPesan = TextEditingController();

  ContohStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerPesan,
              decoration: const InputDecoration(
                labelText: 'Masukan Pesan Anda',
              ),
            ),
            Text(
              'Pesan: ${_controllerPesan.text}',
            ),
          ],
        ),
      ),
    );
  }
}
