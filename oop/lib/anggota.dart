class Anggota {
    final String _nama;
    final String _id;

    Anggota(this._nama, this._id);

    //Getter
    String get nama => _nama;
    String get id => _id;

    //Metode Untuk menampilkan Informasi anggota
    void info(){
        print('Nama Anggota: $_nama, ID: $_id');
    }
}