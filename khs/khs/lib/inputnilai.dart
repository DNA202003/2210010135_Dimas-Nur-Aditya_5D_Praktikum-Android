import 'package:flutter/material.dart';
import 'hasilnilai.dart';

class InputNilai extends StatefulWidget {
  @override
  _InputNilaiState createState() => _InputNilaiState();
}

class _InputNilaiState extends State<InputNilai> {
  final List<String> matakuliah = [
    'Statistik',
    'Multimedia',
    'Rekayasa Perangkat Lunak',
    'Teknik Kompilasi',
    'Pemrograman Berbasis Objek',
    'Basis Data',
    'Jaringan Komputer',
    'Sistem Operasi',
    'Pemrograman Web',
    'Kecerdasan Buatan',
    'Filsafat Ilmu Pengetahuan',
    'Visual',
  ];

  final List<String> nilaiOptions = [
    'Masukkan Nilai Mata Kuliah',
    'A',
    'B+',
    'B',
    'C+',
    'C',
    'D',
    'E'
  ];

  final Map<String, String?> inputNilai = {};
  final TextEditingController namaController = TextEditingController();
  final TextEditingController npmController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();

  // Map SKS untuk setiap matakuliah
  final Map<String, double> sksMataKuliah = {
    'Statistik': 3,
    'Multimedia': 3,
    'Rekayasa Perangkat Lunak': 3,
    'Teknik Kompilasi': 2,
    'Pemrograman Berbasis Objek': 3,
    'Basis Data': 3,
    'Jaringan Komputer': 3,
    'Sistem Operasi': 2,
    'Pemrograman Web': 3,
    'Kecerdasan Buatan': 3,
    'Filsafat Ilmu Pengetahuan': 2,
    'Visual': 2,
  };

  // Reset semua data input
  void resetInput() {
    setState(() {
      inputNilai.clear();
      namaController.clear();
      npmController.clear();
      kelasController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Nilai Mata Kuliah'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Input Nama
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Mahasiswa',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Input NPM
              TextField(
                controller: npmController,
                decoration: const InputDecoration(
                  labelText: 'NPM',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Input Kelas
              TextField(
                controller: kelasController,
                decoration: const InputDecoration(
                  labelText: 'Kelas',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Daftar nilai mata kuliah
              const Text(
                'Masukkan Nilai Mata Kuliah:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: matakuliah.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(matakuliah[index]),
                        ),
                        Expanded(
                          flex: 1,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: inputNilai[matakuliah[index]] ??
                                'Masukkan Nilai Mata Kuliah',
                            items: nilaiOptions.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              if (newValue != 'Masukkan Nilai Mata Kuliah') {
                                setState(() {
                                  inputNilai[matakuliah[index]] = newValue;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              // Tombol Aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: resetInput,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    child: const Text('Batal'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (namaController.text.isEmpty ||
                          npmController.text.isEmpty ||
                          kelasController.text.isEmpty ||
                          inputNilai.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Harap lengkapi semua data dan nilai mata kuliah!',
                            ),
                          ),
                        );
                        return;
                      }

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HasilPage(
                            nama: namaController.text,
                            npm: npmController.text,
                            kelas: kelasController.text,
                            nilaiMataKuliah: inputNilai,
                            sksMataKuliah:
                                sksMataKuliah, // Passing sksMataKuliah
                          ),
                        ),
                      );
                    },
                    child: const Text('Hitung Nilai'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}