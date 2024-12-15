import 'package:flutter/material.dart';

class SlipGaji extends StatelessWidget {
  final int gajiTotal;
  final int tunjGol;
  final int tunjStatus;
  final int tunjMasaKerja;
  final String nip;
  final String nama;

  const SlipGaji({
    super.key,
    required this.nip,
    required this.nama,
    required this.tunjGol,
    required this.tunjStatus,
    required this.tunjMasaKerja,
    required this.gajiTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slip Gaji Pegawai'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NIP: $nip'),
            Text('Nama Pegawai: $nama'),
            Text('Tunjangan Golongan: $tunjGol'),
            Text('Tunjangan Status: $tunjStatus'),
            Text('Tunjangan Masa Kerja: $tunjMasaKerja'),
            Text('Gaji Total: Rp$gajiTotal'),
          ],
        ),
      ),
    );
  }
}