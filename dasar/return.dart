void main(){
print(kali([10, 2, 3]));
print(bagi(4, 2));
}

// function biasa
int kali(List<int> angka){
  var total = 1;
  for(var value in angka){
    total *= value;
  }
  return total;
}

// function short (untuk sedikit baris)
// tidak butuh return, blok
int bagi(int a, int b) => a ~/ b;