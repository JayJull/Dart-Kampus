import 'barber2.dart';
import 'dart:io';

void main() {
  BarberShop barber = BarberShop(); // BarberShop = class, barber = objek yang mengandung class Barbershop

  // pembuktian bahwa sudah terenkapsulasi
  // Anak anak = Anak("Nama Anak", "Alamat Anak", 10);
  // anak.nama;

  print('==== Barber Shop ====');
  barber.menuLayanan();
  print('====================');
  bool run = true;
  while(run) {
    print('1. Tambah Pelanggan');
    print('2. Tambah Transaksi');
    print('3. Laporan Transaksi');
    print('4. Exit');
    print('====================');
    stdout.write('Pilih >> ');

    int opsi = int.parse(stdin.readLineSync());
    switch (opsi) {
      case 1:
        barber.tambahPelanggan();
        break;
      case 2:
        barber.tambahTransaksi();
        break;
      case 3:
        barber.laporanTransaksi();
        break;
      case 4:
        run = false;
        break;
      default:
        print('Opsi tidak valid.');
        break;
    }
  }
}
