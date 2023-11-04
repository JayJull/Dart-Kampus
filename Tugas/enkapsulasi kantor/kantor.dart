import 'kantor 2.dart'; // memanggil propertis 1
// propertis 2
void main() {
  Karyawan pegawai = Karyawan(); // pemanggilan class
  // set data diri sesuai isi method
  pegawai.setNama();
  pegawai.setKode(1224);
  pegawai.setJabatan('Bos Besar');
  // output
  print(" PT PAMAO SEJAHTERA ");
  print("======== info ========");
  print('Nama pegawai : ${pegawai.getNama()}');
  print('Kode pegawai : ${pegawai.getKode()}');
  print('Jabatan pegawai : ${pegawai.getJabatan()}');
  print("======== **** ========");
}