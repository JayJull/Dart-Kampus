void main(){
  print("list / array");
  //bisa pake ini
  var data = <String>["index 1", "index 2"];
  print(data);

  //bisa pake ini juga
  List<int> data2 = [200, 100];
  data2[0] = 10; // mengubah nilai sesuai index
  data2.removeAt(1); // menghapus isi sesuai index

  print(data2);

  print("\nset");
  // set adalah array yang tidak memiliki index.
  // sehingga data tidak bisa diurutkan
  var data3 = <String>{"aku", "ija"}; // perbedaanya ini pake kurung kurawal
  print(data3);
  // set ini tidak bisa mengubah data, karena tidak ada index nya.
  // untuk mengubahnya maka dihapus
  data3.remove("aku");
  print(data3);

  print("\nMap");
  // map adalah array yang mengandung key-value
  // yang bisa menentukan 2 tipe data
  var data4 = <int, String>{};
  data4[362211313] = "ija";
  data4[0] = "1D";
  // untuk penulisannya {key: value} atau variabel[key] = value
  print(data4[362211313]);
  



}