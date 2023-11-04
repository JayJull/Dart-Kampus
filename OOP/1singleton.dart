class Singleton {
  static Singleton _instance;
  String _data;

  Singleton._internal();

  static Singleton get instance {
    if (_instance == null) {
      _instance = Singleton._internal();
    }
    return _instance;
  }

  String get data => _data;
  set data(String data) => _data = data;
}

// Usage:
void main(){
  Singleton.instance.data = "Hello, world!";
  print(Singleton.instance.data); // "Hello, world!"
}
