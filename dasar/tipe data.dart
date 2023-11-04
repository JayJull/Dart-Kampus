void main(){
  // di bahasa dart ada tipe data final dan const
  // bedanya kalau final, nilai bisa berubah
  // sedangkan cons. nilai tidak bisa diubah sama sekali

  print("tipe data dart");
  // 1. number/num (adalah tipe data yang dynamic bisa berisi int dan double)
  print("1. Tipe data Num");
  num angkaDouble = 12.5;
  num angkaInt = 10;
  print("ini hasil double = $angkaDouble "
      "\nini hasil int = $angkaInt");

  // 2. int (berisi bilangan bulat)
  print("\n2. Tipe data int");
  int bilanganBulat = 200;
  print("ini adalah angka bulat $bilanganBulat");

  // 3. double (berisi bilangan desimal)
  print("\n3. Tipe data double");
  double bilanganDesimal = 20.3;
  print("ini adalah angka desimal $bilanganDesimal");

  // 4. Boolean (berisi nilai yang mengandung True / False)
  print("\n4. Tipe data Boolean");
  int nilai = 90;
  if ((nilai > 0) == true){
    print("Lulus");
  } else if((nilai < 100) == false){
    print("Belum lulus");
  }

  // 5. String (berisi kalimat, kata)
  print("\n5. Tipe data String");
  String namaDepan = "Ija";
  String namaBelakang = "Fakhrul";
  String namalengkap = "$namaDepan $namaBelakang";
  print("nama kamu = $namaDepan");
  print("nama lengkap kamu = $namalengkap");

  // 6. Dynamic/var (bisa menampung apapun)
  print("\nTipe data Dynamic(var)");
  var nilaiku = 100;
  var namaku = "izza";
  print("namaku = $namaku nilaiku = $nilaiku");
  
}