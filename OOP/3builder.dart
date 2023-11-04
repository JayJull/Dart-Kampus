class Person {
  final String name;
  final int age;
  final String address;

  Person._({this.name, this.age, this.address});

  factory Person({String name, int age, String address}) {
    return Person._(
      name: name,
      age: age,
      address: address,
    );
  }
}

class PersonBuilder {
  String _name;
  int _age;
  String _address;

  PersonBuilder setName(String name) {
    _name = name;
    return this;
  }

  PersonBuilder setAge(int age) {
    _age = age;
    return this;
  }

  PersonBuilder setAddress(String address) {
    _address = address;
    return this;
  }

  Person build() {
    return Person(
      name: _name,
      age: _age,
      address: _address,
    );
  }
}

main(){
  Person person = PersonBuilder()
      .setName("John Doe")
      .setAge(30)
      .setAddress("123 Main St")
      .build();
  print(person.name); // "John Doe"
  print(person.age); // 30
  print(person.address); // "123 Main St"
}