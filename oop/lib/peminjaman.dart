import 'anggota.dart';
import 'buku.dart';

class Peminjaman extends Buku{
    Anggota anggota;
    DateTime? tanggalPinjam;

    Peminjaman(super.judul, super.pengarang, super.tahunTerbit, this.anggota)
    {
        tanggalPinjam = DateTime.now(); //Menetapkan Tanggal Pinjam Saat Ini
    }
    @override
    void info(){
        super.info();
        print('Dipinjam Oleh: ${anggota.nama}, Tanggal Pinjam: $tanggalPinjam');
    }
}