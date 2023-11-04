void main(){
  // cara biasa
  var data1 = <String>["aku", "ija", "pemberani"];

  print("Cara biasa");
  for(int i = 0; i < data1.length; i++){
    print(data1[i]);
  }

  // cara for in
  print("\nCara for in");
  for(var i in data1){
    print(i);
  }
}