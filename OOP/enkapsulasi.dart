class enkapsulasi{
  String _nama;
  String _makanan;

  void makan(){
    print("hewan ini ${_nama} makan ${_makanan}");
  }
}

class _kucing extends enkapsulasi{
  @override
  void makan(){
    if (_nama == 'kucing'){
      print('${_nama} makan ${_makanan}');
    } else{
      print('antum bukan kucing');
    }
  }
}

void main(){
  _kucing kucing = _kucing();
  kucing._nama = 'anjing';
  kucing._makanan = 'whiskas';
  kucing.makan();
}