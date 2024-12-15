class Buku {
    final String _judul;
    final String _pengarang;
    final int _tahunTerbit;

    Buku (this._judul, this._pengarang, this._tahunTerbit);

    //Getter
    String get judul => _judul;
    String get pengarang => _pengarang;
    int get tahunTerbit => _tahunTerbit;

    //Metode untuk menampilkan Informasi buku
    void info() {
        print('Judul: $_judul, Pengarang: $_pengarang, Tahun Terbit: $_tahunTerbit');
    }
}