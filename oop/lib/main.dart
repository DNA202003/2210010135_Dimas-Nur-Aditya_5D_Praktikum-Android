import 'anggota.dart';
import 'buku.dart';
import 'peminjaman.dart';

void main() {
  //Membuat Objek Buku
  var buku1 = Buku('Belajar OOP Dart', 'Ada Programmer', 2023);
  var buku2 = Buku('Pemrograman Flutter', 'Pengembang Aplikasi', 2024);

  //Menampilkan Informasi tantang Buku
  buku1.info();
  buku2.info();

  //Membuat Objek Anggota
  var anggota1 = Anggota('Alice', 'A001');

  // Membuat Objek Peminjaman dari Buku
  var peminjaman =
      Peminjaman(buku1.judul, buku1.pengarang, buku1.tahunTerbit, anggota1);

  //Menampilkan Informasi Peminjaman
  peminjaman.info();
}
