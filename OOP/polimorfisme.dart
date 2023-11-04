
// Polimorfisme adalah perubahan perilaku objek dari bentuk awal ke bentuk yang lain
import 'dart:io';

class dog{
  String hewan;

  /*void setnamaHewan(){
    stdout.write('masukkan hewan: ');
    String Hewan = stdin.readLineSync();
    hewan = Hewan;
  } */
  void sedang(String makanan){
    print('ini ${hewan} sedang makan ${makanan}'); // ini objek awal
  }
}

class cat extends dog{
  @override
  void sedang(String makanan){
    print('${makanan} sedang di makan ${hewan}'); // ini objek bentuk lain
  }
}

void main(){
  dog dogs = dog();
  cat cats = cat();
  dogs.hewan = 'anjing';
  cats.hewan = 'kucing';

  dogs.sedang('pisang');
  cats.sedang('pisang');
}