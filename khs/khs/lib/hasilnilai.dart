import 'package:flutter/material.dart';
import 'konversi.dart'; // Mengimpor konversi.dart

class HasilPage extends StatelessWidget {
  final String nama;
  final String npm;
  final String kelas;
  final Map<String, String?> nilaiMataKuliah;
  final Map<String, double> sksMataKuliah;

  // Konstruktor non-const
  HasilPage({
    Key? key,
    required this.nama,
    required this.npm,
    required this.kelas,
    required this.nilaiMataKuliah,
    required this.sksMataKuliah,
  }) : super(key: key);

  // Inisialisasi objek Konversi (tanpa 'const')
  final Konversi konversi = Konversi();

  double _hitungIPK() {
    double totalBobot = 0.0;
    int totalSKS = 0;

    nilaiMataKuliah.forEach((matkul, nilai) {
      if (nilai != null) {
        totalSKS += sksMataKuliah[matkul]?.toInt() ?? 0;
        totalBobot += konversi.sksMatkul(nilai) * (sksMataKuliah[matkul] ?? 3);
      }
    });

    return totalBobot / totalSKS;
  }

  @override
  Widget build(BuildContext context) {
    double ipk = _hitungIPK();
    String deskripsiIPK = konversi.indeksPrestrasiSemester(ipk);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Perhitungan'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Informasi Nama, NPM, dan Kelas
              Text('Nama: $nama'),
              Text('NPM: $npm'),
              Text('Kelas: $kelas'),
              const SizedBox(height: 16),

              // Tabel Nilai Mata Kuliah
              const Text(
                'Hasil Nilai Mata Kuliah:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Tabel Data Nilai
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Mata Kuliah')),
                      DataColumn(label: Text('Nilai')),
                      DataColumn(label: Text('SKS')),
                    ],
                    rows: nilaiMataKuliah.entries.map((entry) {
                      String matkul = entry.key;
                      String? nilai = entry.value ?? '-';
                      double sks = sksMataKuliah[matkul] ?? 0;
                      return DataRow(cells: [
                        DataCell(Text(matkul)),
                        DataCell(Text(nilai)),
                        DataCell(Text(sks.toInt().toString())),
                      ]);
                    }).toList(),
                  ),
                ),
              ),

              // Jarak dan IPK
              const SizedBox(height: 32),
              Text(
                'IPK: ${ipk.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                'Indeks Prestasi: $deskripsiIPK',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),

              // Tombol Kembali ke InputNilai
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali ke Input Nilai'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
