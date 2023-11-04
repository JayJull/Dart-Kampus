import 'dart:io';

// class object, enkapsulasi, abstract, inheritence, polimorfisme
abstract class Pelanggan {
  String nama;
  String _alamat;
  int _umur;

  Pelanggan(this.nama, this._alamat, this._umur);

  int getDiskon() {} // yang akan jadi pembeda dari class turunan
  void info();
}

class Anak extends Pelanggan {
  Anak(String nama, String alamat, int usia)
      : super(nama, alamat, usia); // ini konstruktor kelas

  @override
  void info() {
    print('Nama: $nama');
    print('Alamat: $_alamat');
    print('Usia: $_umur tahun');
    print('Status: Anak-anak');
  }

  // diskon ini menjadi pembeda antara anak anak dan dewasa
  @override
  int getDiskon() {
    return 20; // Diskon 20%
  }
}

class Dewasa extends Pelanggan {
  Dewasa(String nama, String alamat, int usia) : super(nama, alamat, usia);

  @override
  void info() {
    print('Nama: $nama');
    print('Alamat: $_alamat');
    print('Usia: $_umur tahun');
    print('Status: Dewasa');
  }

  @override
  int getDiskon() {
    return 0; // tidak ada diskon
  }
}

// class cikal bakal dari layanan / menu
class Layanan {
  String nama;
  int harga;

  Layanan(this.nama, this.harga);
}

// class yang cikal bakalnya untuk mentotalkan pengeluaran transaksi pelanggan
class Transaksi {
  Pelanggan pelanggan;
  List<Layanan> layanan; // kenapa class layanan di list? agar si pelanggan bisa melakukan transaksi sebanyak mungkin
  int totalharga;

  Transaksi(this.pelanggan, this.layanan) {
    totalharga = hitungTotalHarga();

    if (pelanggan is Anak) {
      totalharga = totalharga - hitungDiskon();
    } // validasi, jika inputan pelanggan masuk kategori anak maka akan dikasih diskon
  }

  int hitungTotalHarga() {
    int total = 0;
    for (var item in layanan) {
      total = total +
          item.harga; // contoh : total(0) = total(0) + item.getharga(keramas 25000) berarti total akan menjadi 25000
    }
    return total;
  }

  int hitungDiskon() {
    int diskon = pelanggan
        .getDiskon(); // nilai getDiskon ini berasal dari return nannya
    double diskonAmount = totalharga *
        (diskon / 100); // kenapa pakai double? karena pembagiannya ada pecahan
    return diskonAmount.toInt(); // to int untuk menjadikan bilangan bulat
  }

  void info() {
    print('Transaksi:');
    pelanggan.info(); // kok kelas abstract bisa diakses? karena ini sudah diimplementasikan oleh class anaknya
    print('Total Harga: $totalharga');
  }
}

// class ini sebagai jantung dari class lainnya
class BarberShop {
  List<Pelanggan> daftarPelanggan = []; // tambah pelanggan akan disimpan disini
  List<Layanan> daftarLayanan = []; // proses transaksi akan disimpan disini
  List<Transaksi> daftarTransaksi = []; // Menyimpan transaksi yang telah dilakukan

  void tambahPelanggan() {
    stdout.write('Masukkan nama pelanggan: ');
    String nama = stdin.readLineSync();
    stdout.write('Masukkan alamat pelanggan: ');
    String alamat = stdin.readLineSync();
    stdout.write('Masukkan usia pelanggan: ');
    int umur = int.parse(stdin.readLineSync());

    // validasi umur jika dia berusia kurang dari 12 maka akan dimasukkan ke kategori anak / ditambahkan ke class anak
    if (umur < 12) {
      daftarPelanggan.add(Anak(nama, alamat,
          umur)); // nama, alamat, umur variabel dari inputan cmd yang harus sesuai konstruktor class
    } else {
      daftarPelanggan.add(Dewasa(nama, alamat, umur));
    }

    print('Pelanggan $nama berhasil ditambahkan!');
  }

  // menuLayanan ini digunakan untuk melihat menu nya saja
  void menuLayanan() {
    daftarLayanan.add(Layanan('Potong Rambut', 50000));
    daftarLayanan.add(Layanan('Keramas', 25000));
    daftarLayanan.add(Layanan('Semir', 40000));

    var no = 1;
    print('Menu: ');
    for (var listlayanan in daftarLayanan) {
      print('${no++}. ${listlayanan.nama} ${listlayanan.harga}');
    }
  }

  // bagian paling rumit
  void tambahTransaksi() {
    // ini adalah validasi data pelanggan
    if (daftarPelanggan.isEmpty) {
      print(
          'Tidak ada pelanggan terdaftar.'); // jika tidak ada data pelanggan, maka akan muncul ini
      return;
    }

    print(
        'Pilih pelanggan (masukkan nomor):'); // jika data pelanggan ada, maka akan mengeksekusi ini
    for (var i = 0; i < daftarPelanggan.length; i++) {
      print('${i + 1}. ${daftarPelanggan[i].nama}'); // melihat data pelanggan
    }
    stdout.write('Pilih >> ');
    int indexPelanggan = int.parse(stdin.readLineSync()); // input sesuai nomor,
    // kenapa disini saya namai indexPelanggan? biar enak dan karena nantinya yang dimabil adalah data dari index

    Pelanggan pelanggan = daftarPelanggan[indexPelanggan -
        1]; // ini untuk menyimpan data inputan nomor tadi dan inputan tersebut akan dijadikan index
    // -1 ini digunakan untuk mengurangi data inputan agar sesuai denggan index
    // contoh inputan di cmd 1 setelah itu di -1 maka jadi 0
    // yang nantinya jika dipilih nanti adalah menu dari index 0 (data yang di tambahkan pelanggan yang pertama)

    // Validasi nomor pelanggan
    // nah si inputan yang berubah jadi index tersebut akan divalidasi disini
    if (indexPelanggan < 1 || indexPelanggan > daftarPelanggan.length) {
      print(
          'Pelanggan tidak valid.'); // jika tidak sesuai data yang ada, maka akan muncul ini
      return; // dan dikembalikan lagi ke menu
    }

    // jika sesuai maka akan lanjut ke proses ini
    print(
        'Pilih layanan (masukkan nomor, pisahkan dengan koma jika lebih dari satu):');
    for (var i = 0; i < daftarLayanan.length; i++) {
      print(
          '${i + 1}. ${daftarLayanan[i].nama}'); // untuk memunculkan nama layanannya
    }
    stdout.write('Pilih >> ');
    String inputLayanan = stdin.readLineSync();

    // Memisahkan nomor layanan
    List<String> inputLayananList =
        inputLayanan.split(','); // ini berfungsi untuk memisahkan menjadi list
    // yang awalnya data yang direcord di cmd '1,2,3' menjadi ['1', '2', '3']

    List<int> indexLayanan = [];

    // data yang displit dimasukkan ke dalam for in untuk di proses
    for (var input in inputLayananList) {
      int index = int.parse(
          input); // data yang displit sebelumnya berupa String dan diubah ke Int menggunakan int.parse menjadi [1, 2, 3]

      // Validasi nomor layanan
      if (index >= 1 && index <= daftarLayanan.length) {
        indexLayanan.add(index -
            1); // menambahkan data split ke dalam list indexLayanan yang nantinya akan dijadikan proses transaksi
        // -1 untuk mengurangi data yang displit menjadi index, misal [1, 2, 3] menjadi [0, 1, 2]
      }
    }

    // Validasi layanan
    if (indexLayanan.isEmpty) {
      print(
          'Layanan tidak valid.'); // jika tidak ada layanan dipilih, maka akan muncul ini
      return;
    }

    List<Layanan> layanan = []; // untuk menyimpan nomor layanan yang dipilih
    for (var index in indexLayanan) {
      layanan.add(daftarLayanan[index]);
    }

    Transaksi transaksi = Transaksi(pelanggan,
        layanan); // untuk menyimpan data pelanggan dan menu yang dipilihnya
    // sesudah selesai semuanya data tersebut akan tersimpan di class transaksi
    daftarTransaksi.add(transaksi);
    transaksi.info();
  }

  void laporanTransaksi() {
    // validasi jika data pelanggan tidak ada maka tidak ada transaksi
    if (daftarTransaksi.isEmpty) {
      print(
          'Tidak ada transaksi yang dilakukan.'); // maka yang muncul adalah ini
      return;
    } else {
      // jika data pelanggan ada
      print('Laporan Transaksi:');
      for (var i = 0; i < daftarTransaksi.length; i++) {
        print('Transaksi ${i + 1}:');
        daftarTransaksi[i].info();
        print('====================');
      }
    }
  }
}
