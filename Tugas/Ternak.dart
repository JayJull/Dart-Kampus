
abstract class Ternak {
  int umur;

}

abstract class Mamalia implements Ternak {
  String warnaKulit;
  String jenisKelamin;
  final String lokasi = 'Bangunan 1';
  

  Mamalia(this.jenisKelamin,this.warnaKulit);

  void menyusui();
}

class Sapi extends Mamalia {
  String bunyiSuara;
  int produksiSusu;
  static int hargaJual = 7000000;
  String _jenisPakan;
  int berat;
  int makan ;
  int jmh;
  @override
  int umur;

   Future<void> jkj() async {
  await Future.delayed(Duration(seconds: 3));
  pakan = 'rumput'; 
  print("Pakan $pakan telah siap");   
  }

  Sapi (this.berat, this.bunyiSuara, super.jenisKelamin,this.produksiSusu,this.umur,super.warnaKulit, this.jmh,this.makan,);
   int get harg {
      return hargaJual;
}

   String get pakan {
    return _jenisPakan;
   }
    set pakan (String pakan) {
      _jenisPakan = pakan;
    }
  
  @override
  void menyusui() {
    if (jenisKelamin == 'jantan'){
    print("tidak bisa menyusui");
    }
  else if (jenisKelamin == 'betina'){
    print('Bisa Menyusui');
    }
  }
  
  jmhMakan() {
    return makan * 3;
  }
  totalsusu(){
    return produksiSusu * jmh;
  }
  String toString() {
    return 'Bunyisuara: $bunyiSuara//umur: $umur tahun//Jumlah Makan: $makan kilo//Harga Jual:$hargaJual//jenis Kelamin:$jenisKelamin//warna kulit: $warnaKulit//berat: $berat kilo //jumlah ternak:$jmh//Produksi susu: $produksiSusu liter';
  }

  
}

class Kambing extends Mamalia {
  @override
  int umur;
  String jenisKambing;
  int berat;
  String _jenisPakan;
  static int harga = 3000000;
  String bunyiSuara;
  int jmhkam;
  int makanKm;
  Future<void> jnspakan()async {
  await Future.delayed(Duration(seconds: 3));
  Pakan = 'rumput'; 
  print("Pakan $jenis telah siap");   
  }

  Kambing(this.berat,this.bunyiSuara,this.jenisKambing,this.umur,super.jenisKelamin, super.warnaKulit,this.jmhkam,this.makanKm);

   int har(){
  return harga;
}
  String get jenis {
  return _jenisPakan;
  }

  set Pakan(String jenis) {
    _jenisPakan = jenis;
  }

  
  @override
  void menyusui() {
    if (jenisKelamin == 'jantan'){
    print("tidak bisa menyusui");
    }
  else if (jenisKelamin == 'betina'){
    print('Bisa Menyusui');
    }

    jmhMakan (){
      return makanKm * 3;
    }
  }
  String toString() {
    return 'Jenis Kambing:$jenisKambing//Bunyisuara: $bunyiSuara//umur: $umur tahun//Jumlah Makan: $makanKm kilo//Harga Jual:$harga//jenis Kelamin:$jenisKelamin//warna kulit: $warnaKulit//berat: $berat kilo //jumlah ternak:$jmhkam';
  }
  }


abstract class Unggas implements Ternak {
  String warnabulu;
  String jenisKelamin;
  final String lokasi = 'Bangunan 2';
  
  Unggas(this.jenisKelamin, this.warnabulu);

  void bertelur();
}

class Bebek extends Unggas {
  @override
  int umur;
  String nama;
  int tinggi;
  static int hargaTelur = 3000;
  int jumlahTelur;
  String _jenisPakan;
  int makan ;
  int jmhBB;
  static int hargaBB = 14000;

 int harg(){
  return hargaBB;
}

  Future<void> jkj() async {
  await Future.delayed(Duration(seconds: 3));
  pakan = 'kosentrat'; 
  print("Pakan $JenisPakan telah siap");   
  }


  Bebek(super.jenisKelamin, super.warnabulu,this.jumlahTelur,this.nama,this.umur,this.tinggi,this.jmhBB,this.makan);

  String get JenisPakan {
    return _jenisPakan;
  }

    set pakan (String jenisPakan) {
      _jenisPakan = jenisPakan;
    }
    

  int harga() {
    return hargaTelur * jumlahTelur;
  }

  @override
  void bertelur() {
    if (jenisKelamin == 'betina') {
      print('siap bertelur jika usianya lebih dari 1 tahun');
    }
    else if (jenisKelamin == 'jantan') {
      print('Jantan tidak bisa bertelur');
    }
  }
  jmhMakan (){
    return makan * 3;
  }

  String toString(){
    return 'Jenis Ayam:$nama||Umur:$umur||Jenis Kelamin:$jenisKelamin||Tinggi: $tinggi||Warna Bulu: $warnabulu|| Jumlah Makan: $makan|| Jumlah Ayam:$jmhBB||jumlah telur:$jumlahTelur';
  }

}

class Ayam extends Unggas {
  @override
  int umur;
  String jenisAyam;
  int berat;
  int jmhTelur;
  final int harga = 25000;
  String _jenisPakan;
  static int makan = 2;
  int jumh;

  
  Future<void> jkj()async {
  await Future.delayed(Duration(seconds: 3));
  Jenispakan = 'kosentrat'; 
  print("Pakan $JenisPakan telah siap");   
  }

  Ayam (super.jenisKelamin,super.warnabulu,this.berat,this.jenisAyam,this.jmhTelur,this.umur,this.jumh);

  int harg(){
  return harga;
}

  @override
  void bertelur() {
    if (jenisKelamin == 'betina') {
      print('siap bertelur jika usianya lebih dari 1 tahun');
    }
    else if (jenisKelamin == 'jantan') {
      print('Jantan tidak bisa bertelur');
    }
  }
   String get JenisPakan {
    return _jenisPakan;
  }

    set Jenispakan (String jenisPakan) {
      _jenisPakan = jenisPakan;
    }

    void jspakan(PakanTM pakan) {
      if (JenisPakan == pakan) {
      Future<void> jnspakan()async {
       await Future.delayed(Duration(seconds: 3));
      Jenispakan = 'Jagung'; 
      print("Pakan $JenisPakan telah siap");   
      }
    }
    else {
      print('Mohon Masukan ulang dikarenakan ternak anda tidak menyukainya');
    }
    }
    String toString(){
    return 'Jenis Ayam:$jenisAyam||Umur:$umur||Jenis Kelamin:$jenisKelamin||Warna Bulu: $warnabulu|| Jumlah Makan: $makan|| Jumlah Ayam:$jumh||jumlah telur:$jmhTelur';
  }

  }

class PakanTM {
  String namaPakan;
  int pakan;
  int tambah;

  PakanTM(this.pakan,this.namaPakan);

  jumlahPakan(){
    return pakan - tambah;
  }

}

class Manejement {
  int jumalahTK;//untuk total jumlah pada ternak
  int mati;//untuk ternak yang mati
  int nilai2;//untuk nilai harga yang disamakan pada harga ternak 
  int nilai1;//
  int biaya;
  int jumlah;//jumlah p

  Manejement() {
    this.biaya = biaya;
    this.mati = mati;
    this.nilai1 = nilai1;
    this.nilai2 = nilai2;
    this.jumalahTK = jumalahTK;
    this.jumlah = jumlah;
  }

  TltTernak() {
    return jumalahTK - mati;
  }
  pemasukan() {
    return TltTernak() * nilai2;
  }
  pengeluaran() {
    jumlah * biaya;
  }

  keuntungan(){
   return pemasukan() - pengeluaran() ;
  }
  

}


