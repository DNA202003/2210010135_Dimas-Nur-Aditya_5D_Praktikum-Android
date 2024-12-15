import 'package:flutter/material.dart';

class ContohStatefulWidget extends StatefulWidget {
  const ContohStatefulWidget({super.key});

  @override
  _ContohStatefulWidgetState createState() => _ContohStatefulWidgetState();
}

class _ContohStatefulWidgetState extends State<ContohStatefulWidget> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Input')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Masukkan Nama'),
              onChanged: (value) {
                setState(() {
                  _name = value; // Memperbarui state saat input berubah
                });
              },
            ),
            const SizedBox(height: 20),
            // Menampilkan nama langsung
            Text(
              'Nama: $_name',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
