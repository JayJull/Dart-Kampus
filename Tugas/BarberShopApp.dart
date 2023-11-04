import 'dart:io';
// konsep oop program ini ada 4 : class object, abstract, polimorfisme, static

// pelanggan disini saya buat class abstract karena
// agar bisa digunakan lebih spesifik oleh class transaksi
abstract class Pelanggan {
  String nama;
  String alamat;
  String no_telp;

  Pelanggan(this.nama, this.alamat, this.no_telp);

  void info(); 
}

class Transaksi extends Pelanggan {
  static Modelrambut modelRambut; 
  static Layanan layananTambahan; 
  DateTime tanggal = DateTime.now(); 

  Transaksi(String nama, String alamat, String no_telp) : super(nama, alamat, no_telp) {
    this.tanggal;
  }

  // fungsi method buatReservasi adalah untuk memproses data pelayanan
  // dibuat static karena di class ini terdapat konstruktor mengganggu yang kalau ingin memanggil method buatReservasi harus mengisi nilai awal objek
  // maka dari itu dibuat static karena agar nantinya memudahkan kolaborasi dengan method lainnya

  static void buatReservasi() {
    stdout.write("Masukkan model rambut: ");
    var model = stdin.readLineSync();
    stdout.write("Masukkan deskripsi: ");
    var deskripsi = stdin.readLineSync();

    modelRambut = Modelrambut(model, deskripsi); // ini adalah contoh implementasi dari konstruktor class model rambut yang nantinya akan disimpan secara sementara

    print("Pilih layanan tambahan");
    print("1. Keramas");
    print("2. Semir");
    print('3. Potong aja');
    stdout.write('Pilih >> ');

    int pilihan = int.tryParse(stdin.readLineSync());
    if (pilihan == 1) {
      layananTambahan = Layanan("Keramas", (30000 + 50000)); // ini adalah contoh implementasi dari konstruktor class layanan yang nantinya akan disimpan secara sementara
    } else if (pilihan == 2) {
      layananTambahan = Layanan("Semir", (40000 + 50000)); // ini adalah contoh implementasi dari konstruktor class layanan yang nantinya akan disimpan secara sementara
    } else if (pilihan == 3) {
      layananTambahan = Layanan("Potong Aja", 50000); // ini adalah contoh implementasi dari konstruktor class layanan yang nantinya akan disimpan secara sementara
    }
  }

  
  @override
  void info() {
    print("Nama pelanggan: $nama");
    print("Alamat pelanggan: $alamat");
    print("No Telepon pelanggan: $no_telp");
    print("Model Rambut: ${modelRambut.model}"); 
    print("Deskripsi Rambut: ${modelRambut.deskripsi}"); 
    print("Layanan Tambahan: ${layananTambahan.nama_layanan}"); 
    print("Total Harga: ${layananTambahan.harga}"); 
    print("Tanggal Transaksi: ${tanggal}"); 
  }
}

class Modelrambut {
  String model;
  String deskripsi;
  Modelrambut(this.model,this.deskripsi); 
}

class Layanan {
  String nama_layanan;
  int harga;
  Layanan(this.nama_layanan,this.harga); 
}

class BarberShopApp {
  List<Transaksi> listTransaksi = []; 

  void run() {
    var run = true;
    while (run) {
      print('====== BarberShop ======');
      print('Potong Rambut \t50000');
      print('Keramas \t30000');
      print('Semir \t\t40000');
      print('========================');
      print("Pilih Menu");
      print("1. Booking");
      print("2. Lihat Transaksi");
      print("3. Exit");
      stdout.write('pilih: ');
      var input = int.tryParse(stdin.readLineSync());

      switch (input) {
        case 1:
          buatTransaksi(); // ini adalah pemanggilan method dari class ini, tidak perlu memanggil objek karena masih dalam class yang sama
          break;
        case 2:
          lihatTransaksi(); // ini adalah pemanggilan method dari class ini, tidak perlu memanggil objek karena masih dalam class yang sama
          break;
        case 3:
          run = false; // fungsinya untuk menghentikan perulangan dan juga program akan berhenti
          break;
      }
    }
  }

  void buatTransaksi() {
    Transaksi.buatReservasi(); // ini adalah method yang dikolaborasi yang juga saya maksudkan tadi

    stdout.write("Masukkan nama: ");
    String nama = stdin.readLineSync();
    stdout.write("Masukkan alamat: ");
    String alamat = stdin.readLineSync();
    stdout.write("Masukkan nomer telepon: ");
    String no = stdin.readLineSync();

    Transaksi transaksi = Transaksi(nama, alamat,no); // // ini adalah contoh implementasi dari konstruktor class transaksi yang nantinya akan disimpan secara sementara

    print('\nReservasi sudah dibuat!\n'); // setelah proses memasukkan data selesai, data akan dimasukkan ke dalam list

    listTransaksi.add(transaksi); // ini adalah contoh penambahan data konstruktor transaksi ke dalam listTransaksi
  }

  void lihatTransaksi() {
    if (listTransaksi.isEmpty) {
      print("Tidak ada data transaksi.");
    } else {
      // ini adalah implementasi polimorfisme fungsinya untuk melihat method info dari class transaksi
      for (var transaksi in listTransaksi) {
        print("============== Data Transaksi ============");
        transaksi.info();
        print("==========================================");
      }
    }
  }
}

void main() {
  BarberShopApp barber = BarberShopApp(); // barber adalah objek dari class BarberShopApp
  barber.run(); // ini adalah pemanggilan method run yang ada dalam class BarberShop
}
