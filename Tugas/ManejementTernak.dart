import 'dart:io';
import 'Ternak.dart';

Future<void> main(List<String> args) async {
 var r1 = Sapi(123, 'moooo', 'betina', 4, 5, 'Putih hitam', 12, 4);
 var r2 = Sapi(100, 'mooo', 'jantan', 0, 6, 'putih', 10, 3);
 var q1 = Kambing(45, 'mbeeek', 'Etawa', 3, 'betina', 'coklat', 10, 2);
 var q2 = Kambing(40, 'mbeeek', 'Etawa', 3, 'jantan', 'coklat', 8, 2);
 var w2 = Bebek('Jantan', 'Hitam', 0, 'Bebek', 2, 12, 6, 2);
 var w1 = Bebek('betina', 'Hitam putih', 4, 'Bebek', 2, 12, 6, 2);
 var a2 = Ayam('Jantan', 'Putih', 3, 'Kampung', 0, 3, 12);
 var a1 = Ayam('Betina', 'Putih hitam', 2, 'Kampung', 10, 3, 12);
 var t = PakanTM(50, 'rumput');
 var b = PakanTM(40, 'Kosentrat');
 var d = PakanTM(70, 'Jagung');
 int wow = 0;
 var x,c,v,j;


 stdout.write('Masukan Nama Anda : ');
 var user = stdin.readLineSync();
 print('Selamat datang : $user');
 while (true) {
 print("Pilihan Menu :");
 print('1.Informasi Ternak.       2.Pemberian Pakan.       3. Manejemen Ternak.       4.Keluar');
  x = stdin.readLineSync();
    if (x == '1') {
      while (true) {        
      print('Pilih Ternak');
      print('1.Sapi     2.Kambing     3.Ayam      4.Bebek     5.Kembali');   
      c = stdin.readLineSync();
      if (c == '1') {
        while (true) {
        print('Jenis kelamin:');
        print('1.Jantan   2.Betina  3.keluar');
        var g = stdin.readLineSync();
          if (g == '1'){
          print(r2.toString());
          }
          else if (g == '2') {
            print(r1.toString());
          }
          else if (g == '3'){
            break;
          }


          }   
        }
            else  if (c == '2') {
            while (true) {
            print('Jenis kelamin:');
             print('1.Jantan   2.Betina  3.keluar');
             var g = stdin.readLineSync();
            if (g == '1'){
            print(q2.toString());
            }
            else if (g == '2') {
            print(q1.toString());
            }
            else if (g == '3'){
            break;
            }
          }   
        }
        else if (c == '3') {
            while (true) {
            print('Jenis kelamin:');
             print('1.Jantan   2.Betina  3.keluar');
             var g = stdin.readLineSync();
            if (g == '1'){
            print(a2.toString());
            }
            else if (g == '2') {
            print(a1.toString());
            }
            else if (g == '3'){
            break;
            }
          }   
        }
        else  if (c == '4') {
            while (true) {
            print('Jenis kelamin:');
             print('1.Jantan   2.Betina  3.keluar');
             var g = stdin.readLineSync();
            if (g == '1'){
            print(w2.toString());
            }
            else if (g == '2') {
            print(w1.toString());
            }
            else if (g == '3'){
            break;
            }
          }   
        }
                  else if (c == '5'){
                  break;
                }
          
        }
      }
    else if( x == '2'){
      while (true) {
      print('Pilih Ternak yang ingin diberi makan: ');
      print('1.Sapi     2.Kambing     3.Ayam      4.Bebek     5.Kembali');
      v = stdin.readLineSync();
      if (v == '1'){
        while (true) {
        print('Pilih Jenis Pakan :');
        print('1.Rumput     2.Kosentrat     3.Jagung');
                  j =stdin.readLineSync();
                 if (j == 'rumput'){
                    var p = q1;
                    print('Memproses perintah');
                    await p.jnspakan();
                    print('Program selesai');
                    t.tambah = q1.makanKm;
                    print('sisa pakan : ');
                    print(t.jumlahPakan());
                    break;
                  }
                  else {
                    print('mohon Diulangi karena ternak anda tidak suka');
                  }
                }
                
              }
            else if (v == '2'){
                while (true) {
                  print('Pilih Jenis Pakan :');
                  print('1.Rumput     2.Kosentrat     3.Jagung');
                  j =stdin.readLineSync();
                  if (j == 'rumput'){
                    var p = q1;
                    print('Memproses perintah');
                    await p.jnspakan();
                    print('Program selesai');
                    print(t.jumlahPakan());
                    break;
                  }
                  else {
                    print('mohon Diulangi karena ternak anda tidak suka');
                  }
                }
                
              }
                else if (v == '3'){
                while (true) {
                  print('Pilih Jenis Pakan :');
                  print('1.Rumput     2.Kosentrat     3.Jagung');
                  j =stdin.readLineSync();
                  if (j == 'kosentrat'){
                    var p = w1;
                    print('Memproses perintah');
                    await p.jkj;
                    print('Program selesai');
                    print(b.jumlahPakan());
                    break;
                  }
                  else {
                    print('mohon Diulangi karena ternak anda tidak suka');
                  }
                }
                
              }
                 else if (v == '4'){
                while (true) {
                  print('Pilih Jenis Pakan :');
                  print('1.Rumput     2.Kosentrat     3.Jagung');
                  j =stdin.readLineSync();
                  if (j == 'jagung'){
                    var p = a1;
                    print('Memproses perintah');
                    await p.jkj;
                    print('Program selesai');
                    print(d.jumlahPakan());
                    break;
                  }
                  else {
                    print('mohon Diulangi karena ternak anda tidak suka');
                  }
                }
                
              }
              else if (v == '5') {
                break;
              }
             }
      }
      else if (x == '3'){
        while (true) {
          print('Pilih Program menu :');
          print('1.Tambah Ternak dan Cek Ternak        2.Cek Kesehatan Ternak        3.Cek Penjualan        4.Keluar');
          j = stdin.readLineSync();

          if ( j == '2'){ 
  // Mengambil input dari pengguna
  print('Masukkan nama hewan:');
  String namaHewan = stdin.readLineSync();
  
  print('Masukkan usia hewan:');
  var usiaH = stdin.readLineSync();
   int usiaHewan = int.parse(usiaH);

  
  print('Apakah hewan sedang sakit? (ya/tidak):');
  String statusSakit = stdin.readLineSync();
  
  // Memeriksa kesehatan hewan
  if (statusSakit == 'ya') {
    print('Hewan $namaHewan sedang sakit. Mohon konsultasikan ke dokter hewan.');
  } else {
    if (usiaHewan < 1) {
      print('Hewan $namaHewan sehat. Namun, sebaiknya periksakan ke dokter hewan untuk vaksinasi dan perawatan rutin.');
    } else {
      print('Hewan $namaHewan sehat. Pastikan untuk menjaga pola makan dan memberikan perawatan yang baik.');
    }
  }

          }
          else if (j == '1'){
             while (true) {
      print('Pilih Ternak: ');
      print('1.Sapi     2.Kambing     3.Ayam      4.Bebek     5.Kembali');
      v = stdin.readLineSync();
          if ( v == '1'){
            while (true){
            print('Pilih opsi :');
            print('1.Tambah Sapi        2.Cek Jumlah Sapi      3.Keluar');
            x = stdin.readLineSync();
            if ( x == '1'){
              while (true) {
              print('Maksukan Jenis Kelamin :');
              print('1.Jantan      2.Betina      3.keluar');
              c = stdin.readLineSync();

                if (c == '1'){
                    print('Maksukan Jumlah :');
                    var w = stdin.readLineSync();
                    int tambahK8 = int.parse(w); 
                    int e = r2.jmh;
                    print('Ternak telah ditambahkan');
                    r2.jmh = e + tambahK8;
                }
                if (c == '2'){
                    print('Maksukan Jumlah :');
                    var j7 = stdin.readLineSync();
                    int tambahK7 = int.parse(j7);
                    int e2 = r1.jmh;
                    print('Ternak telah ditambahkan');
                    r1.jmh = e2 + tambahK7;
                }
                else if (c == '3'){
                  break;
                }
              }
            }
            else if (x == '2'){
              var b =r2.jmh;
              var b1 =r1.jmh;
              c = b1 + b;
              print('Jumlah Jantan = $b');
              print('Jumlah Betina = $b1');
              print('Jumlah Total Sapi = $c');
            }
            else if (x == '3'){
              break;
            }
            }
                }
                if ( v == '2'){
            while (true){
            print('Pilih opsi :');
            print('1.Tambah Kambing        2.Cek Jumlah Kambing      3.Keluar');
            x = stdin.readLineSync();
            if ( x == '1'){
              print('Maksukan Jenis Kelamin :');
              print('1.Jantan      2.Betina');
              c = stdin.readLineSync();

                 if (c == '1'){
                    print('Maksukan Jumlah :');
                    var j8 = stdin.readLineSync();
                    int tambahK6 = int.parse(j8);
                    q2.jmhkam = q2.jmhkam + tambahK6;
                    print('Ternak telah ditambahkan');
                }
                 if (c == '2'){
                    print('Maksukan Jumlah :');
                    String j0 = stdin.readLineSync();
                    int tam7 = int.parse(j0);
                    print('Ternak telah ditambahkan');
                    q1.jmhkam = q1.jmhkam + tam7;
                }
            }
            else if (x == '2'){
              var b =q2.jmhkam;
              var b1 =q1.jmhkam;
              c = b1 + b;
              print('Jumlah Jantan = $b');
              print('Jumlah Betina = $b1');
              print('Jumlah Total kambing = $c');
            }
            else if (x == '3'){
              break;
            }
            }
                }
                if ( v == '3'){
            while (true){
            print('Pilih opsi :');
            print('1.Tambah Ayam        2.Cek Jumlah Ayam      3.Keluar');
            x = stdin.readLineSync();
            if ( x == '1'){
              print('Maksukan Jenis Kelamin :');
              print('1.Jantan      2.Betina');
              c = stdin.readLineSync();

                if (c == '1'){
                    print('Maksukan Jumlah :');
                    var ji = stdin.readLineSync();
                    int tambahK4 = int.parse(ji);
                    print('Ternak telah ditambahkan');
                    a2.jumh = a2.jumh + tambahK4;
                }
                if (c == '2'){
                   print('Maksukan Jumlah :');
                    var j1 = stdin.readLineSync();
                    int tambahK3 = int.parse(j1);
                    print('Ternak telah ditambahkan');
                    print(a1.jumh = a1.jumh + tambahK3);
                }
            }
            else if (x == '2'){
              var b =a2.jumh;
              var b1 =a1.jumh;
              c = b1 + b;
              print('Jumlah Jantan = $b');
              print('Jumlah Betina = $b1');
              print('Jumlah Total Ayam = $c');
            }
            else if (x == '3'){
              break;
            }
            }
                }
                if ( v == '4'){
            while (true){
            print('Pilih opsi :');
            print('1.Tambah Bebek        2.Cek Jumlah Bebek      3.Keluar');
            x = stdin.readLineSync();
            if ( x == '1'){
              print('Maksukan Jenis Kelamin :');
              print('1.Jantan      2.Betina');
              c = stdin.readLineSync();

                if (c == '1' 'jantan' 'Jantan'){
                   print('Maksukan Jumlah :');
                    var jk = stdin.readLineSync();
                    int tambahK2 = int.parse(jk);
                    w2.jmhBB = w2.jmhBB + tambahK2;
                    print('Ternak telah ditambahkan');
                }
                if (c == '2' 'Betina' 'betina'){
                    print('Maksukan Jumlah :');
                    var jl = stdin.readLineSync();
                    int tambahK1 = int.parse(jl);
                    w1.jmhBB = w1.jmhBB + tambahK1;
                    print('Ternak telah ditambahkan');
                }
            }
            else if (x == '2'){
              var b =w2.jmhBB;
              var b1 =w1.jmhBB;
              c = b1 + b;
              print('Jumlah Jantan = $b');
              print('Jumlah Betina = $b1');
              print('Jumlah Total Bebek = $c');
            }
            else if (x == '3'){
              break;
            }
            }
            }
            else if (v == '5'){
              break;
            }   
          }

          
          }
          else if (j == '3'){
            while (true) {
      print('Pilih Ternak: ');
      print('1.Sapi     2.Kambing     3.Ayam      4.Bebek     5.Kembali');
      v = stdin.readLineSync();
        if (v == '1'){
          while (true) {
            print('Pilih menu :');
            print('1.Penjualan Ternak     2.Keuntungan     3.Keluar');
             var n = stdin.readLineSync();
               if (n == '1'){
                print('Pilih Jenis kelamin');
                print('1.Jantan    2.Betina   3.keluar');
                  var b = stdin.readLineSync();
                  if (b == '1') {
                      print('Masukan jumlah ternak yang akan di jual:');
                      var p = stdin.readLineSync();
                      int hk = int.parse(p);
                      int kq = hk * r1.harg;
                      wow = wow + kq;
                      r1.jmh = r1.jmh - hk;
                  }
                  else if (b == '2') {
                      print('Masukan jumlah ternak yang akan di jual:');
                      var po = stdin.readLineSync();
                      int yu = int.parse(po);
                      int ko = yu * r2.harg;
                      wow = wow + ko;
                      r2.jmh = r2.jmh - yu;
                  }
                  else if(b == '3'){
                    break;
                  }
                }
               else if (n == '2'){
                print('Total Keuntungan :$wow');
               }
               else if (n == '3'){
                break;
               }
          }
        }
        else if (v == '2'){
          while (true) {
            print('Pilih menu :');
            print('1.Penjualan Ternak     2.Keuntungan     3.Keluar');
             var n = stdin.readLineSync();
             int k = 0;
               if (n == '1'){
                print('Pilih Jenis kelamin');
                print('1.Jantan    2.Betina   3.keluar');
                  var b = stdin.readLineSync();
                  if (b == '1') {
                    print('Masukan jumlah ternak ynag akan di jual:');
                    var p2 = stdin.readLineSync();
                    int ui = int.parse(p2) ;
                    k = ui * q2.har();
                    print('Total Harga :$k');
                    wow = wow + k;
                    q2.jmhkam = q2.jmhkam - ui;
                  }
                  else if (b == '2') {
                      print('Masukan jumlah ternak ynag akan di jual:');
                      var p1 = stdin.readLineSync();        int pi = int.parse(p1);             
                      k = pi * q1.har();
                      print('Total Penjualan :$k');
                      wow = wow + k;
                      q1.jmhkam = q1.jmhkam - pi;
                  }
                  else if(b == '3'){
                    break;
                  }
                }
               else if (n == '2'){
                print('Total Keuntungan : $wow');
               }
               else if (n == '3'){
                break;
               }
          }
        }
        else if (v == '3'){
          while (true) {
            print('Pilih menu :');
            print('1.Penjualan Ternak     2.Keuntungan     3.Keluar');
             var n = stdin.readLineSync();
             int k = 0;
               if (n == '1'){
                print('Pilih Jenis kelamin');
                print('1.Jantan    2.Betina   3.keluar');
                  var b = stdin.readLineSync();
                  if (b == '1') {
                      print('Masukan jumlah ternak ynag akan di jual:');
                      var p3 = stdin.readLineSync();
                      int hp = int.parse(p3);
                      k = hp * a2.harg();
                      wow = wow + k;
                      a2.jumh = a2.jumh - 
                      hp;
                  }
                  else if (b == '2') {
                      print('Masukan jumlah ternak ynag akan di jual:');
                      var p4 = stdin.readLineSync();
                      int op = int.parse(p4);
                      k = op * a1.harg();
                      wow = wow + k;
                      a1.jumh = a1.jumh - 
                      op;
                  }
                  else if(b == '3'){
                    break;
                  }
                }
               else if (n == '2'){
                print('Total Keuntungan : $wow');
               }
               else if (n == '3'){
                break;
               }
          }
        }
        else if (v == '4'){
          while (true) {
            print('Pilih menu :');
            print('1.Penjualan Ternak     2.Keuntungan     3.Keluar');
             var n = stdin.readLineSync();
             int k = 0;
               if (n == '1'){
                print('Pilih Jenis kelamin');
                print('1.Jantan    2.Betina   3.keluar');
                  var b = stdin.readLineSync();
                  if (b == '1') {
                     print('Masukan jumlah ternak ynag akan di jual:');
                      var p6 = stdin.readLineSync();
                      int lm = int.parse(p6);
                      k = lm * w2.harg();
                      wow = wow + k;
                      w2.jmhBB = w2.jmhBB - lm;
                  }
                  else if (b == '2') {
                      print('Masukan jumlah ternak ynag akan di jual:');
                      var p7 = stdin.readLineSync();
                      int vu = int.parse(p7);
                       k = vu * w1.harg();
                      wow = wow + k;
                      w1.jmhBB = w1.jmhBB - vu;
                  }
                  else if(b == '3'){
                    break;
                  }
                }
               else if (n == '2'){
                print('Total Keuntungan : $wow');
               }
               else if (n == '3'){
                break;
               }
          }
        }
        else if (v == '5'){
          break;
        }
            }
          }
          else if (j == '4'){
            break;
          }
        }
      }
      else if (x == '4'){
        print('Sampai Jumpa Kembali');
        break;
      }
    }  
 }