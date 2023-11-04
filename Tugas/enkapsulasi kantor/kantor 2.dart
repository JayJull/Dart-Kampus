// propertis 1
import 'dart:io';

class Karyawan {
  // attribut
  String _nama;
  int _kode; // attribut private
  String _jabatan;
  // method nama
  void setNama() {
    stdout.write('masukkan nama: ');
    String Nama = stdin.readLineSync();
    _nama = Nama;
  }
  String getNama() {
    return _nama;
  }
  // method kode
  void setKode(int Kode) => _kode = Kode;
  int getKode(){
    return _kode;
  }
  // method jabatan
  void setJabatan(String Jabatan) => _jabatan = Jabatan;
  String getJabatan() {
    return _jabatan;
  }
}