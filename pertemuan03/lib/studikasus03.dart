import 'package:flutter/material.dart';

class Studikasus03 extends StatefulWidget {
  const Studikasus03({super.key});

  @override
  _Studikasus03State createState() => _Studikasus03State();
}

class _Studikasus03State extends State<Studikasus03> {
  String? selectedHokage; // Variabel untuk menyimpan Hokage yang dipilih
  final List<Map<String, String>> hokageData = [
    {
      'name': 'Hokage 1',
      'image':
          'https://static.wikia.nocookie.net/naruto/images/3/30/Hokage_Hashirama.png',
    },
    {
      'name': 'Hokage 2',
      'image':
          'https://cdn.idntimes.com/content-images/duniaku/post/20191219/kage-terkuat-tobirama-senju-4f785ff7a463c753eddd05d0c0e9da9b.jpg',
    },
    {
      'name': 'Hokage 3',
      'image':
          'https://cdn.idntimes.com/content-images/community/2023/08/2906592-cropped-56965fbaa68adf470a17cc45ea5d328d-1c144a7a493a45ebf933a8015a055700_600x400.jpg',
    },
    {
      'name': 'Hokage 4',
      'image':
          'https://img.koran-jakarta.com/images/article/masashi-kishimoto-bakal-buat-spin-off-hokage-keempat-minato-namikaze-230420120651.jpeg',
    },
    {
      'name': 'Hokage 5',
      'image':
          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2022/10/23/934786489.jpg',
    },
  ];
  String? imageUrl; // URL gambar yang dipilih

  void _loadImage() {
    setState(() {
      imageUrl = hokageData
          .firstWhere((hokage) => hokage['name'] == selectedHokage)['image'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studi Kasus ComboBox dan Gambar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedHokage,
              hint: const Text('Pilih Hokage'),
              onChanged: (String? value) {
                setState(() {
                  selectedHokage = value;
                });
              },
              items: hokageData
                  .map<DropdownMenuItem<String>>((hokage) => DropdownMenuItem(
                        value: hokage['name'],
                        child: Text(hokage['name']!),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: selectedHokage != null ? _loadImage : null,
              child: const Text('Tampilkan Gambar'),
            ),
            const SizedBox(height: 20),
            if (imageUrl != null)
              Image.network(
                imageUrl!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: progress.expectedTotalBytes != null
                          ? progress.cumulativeBytesLoaded /
                              (progress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Gagal memuat gambar.');
                },
              ),
          ],
        ),
      ),
    );
  }
}
