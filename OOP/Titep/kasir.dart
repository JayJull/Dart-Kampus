// import 'dart:io';
//
// class Produk{
//   String nama;
//   int harga;
//   int id;
//
//   Produk(String name, int price, int id){
//     this.nama = name;
//     this.harga = price;
//     this.id = id;
//   }
//
//   void info(){
//     print('id: $id');
//     print('nama produk: $nama');
//     print('harga produk: $harga');
//   }
// }
//
// class pakaian extends Produk{
//   String size;
//
//   pakaian(int id, String name, int price, String size) : super(name, price, id){
//     this.size = size;
//   }
//
//   @override
//   void info(){
//     super.info();
//     print('ukuran: $size');
//     print('=========================');
//   }
// }
//
// class makanan extends Produk{
//   String ktg;
//
//   makanan(String name, int price, int id, String kategori) : super(name, price, id){
//     this.ktg = kategori;
//   }
//
//   @override
//   void info(){
//     super.info();
//     print('kateggori: $ktg');
//   }
// }
//
// class transaksi{
//
// }
//
// void main(){
//
//   void baju(){
//     int jumlah;
//
//     pakaian trans_pakaian;
//     List<pakaian> dft_pakaian = [];
//     dft_pakaian.add(pakaian(1, 'Baju Koko', 150000, 'XL'));
//     dft_pakaian.add(pakaian(2, 'Kemeja', 250000, 'L'));
//     dft_pakaian.add(pakaian(3, 'Kaos Sobek-Sobek', 50000, 'L'));
//     dft_pakaian.add(pakaian(4, 'Baju Gamis', 270000, 'XL'));
//
//     stdin.
//
//     dft_pakaian.forEach((daftar) { daftar.info();} );
//   }
//
//   bool run = true;
//   while (run) {
//     print('------Selamat datang------');
//     print('1. Show barang');
//     print('2. Transaksi');
//     stdout.write('pilih: ');
//     String opsi = stdin.readLineSync();
//
//     switch (opsi) {
//       case '1' :
//         print('Menu Produk');
//         print('1. Pakaian');
//         stdout.write('pilih: ');
//         String opsi2 = stdin.readLineSync();
//
//         switch (opsi2) {
//           case '1' :
//             baju();
//             break;
//         }
//         break;
//       case '2' :
//         print('Masukkan id: ');
//         String id = stdin.readLineSync();
//         if (opsi != null) {
//
//         }
//     }
//   }
// }