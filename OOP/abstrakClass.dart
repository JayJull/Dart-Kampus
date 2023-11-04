abstract class Profesi{
  String nama;
  int umur;

  void detail();
  void bertugas();
}

class Tentara extends Profesi{
  String negara;

  @override
  void bertugas() {
    print('${nama} tugas kamu mempertahankan negara ${negara}');
  }

  @override
  void detail() {
    print('nama : ${nama}');
    print('umur : ${umur}');
  }
}

class Dokter extends Profesi{
  int jumlahPasien;

  @override
  void bertugas() {
    print('${nama} tugas kamu merawat pasien yang sakit');
  }

  void jml_pasien(){
    print('jumlah pasien yang akan kamu rawat adalah ${jumlahPasien} orang');
  }

  @override
  void detail() {
    print('nama : ${nama}');
    print('umur : ${umur}');
  }
}

void main(){
  Tentara army = Tentara();
  Dokter doctor = Dokter();

  // set
  army.nama = 'Anwar';
  army.negara = 'Indonesia';
  army.umur = 28;
  // output
  print('\t========== Tentara ==========');
  army.detail();
  army.bertugas();
  print('\t============ ** ============');

  // set
  doctor.nama = 'Widodo';
  doctor.umur = 25;
  doctor.jumlahPasien = 14;
  // output
  print('\n\t========== Dokter ==========');
  doctor.detail();
  doctor.bertugas();
  doctor.jml_pasien();
  print('\t============ ** ============');

}