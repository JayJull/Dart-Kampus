abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() => print("Woof!");
}

class Cat implements Animal {
  @override
  void makeSound() => print("Meow!");
}

enum AnimalType { dog, cat }

class AnimalFactory {
  static Animal createAnimal(AnimalType type) {
    switch (type) {
      case AnimalType.dog:
        return Dog();
      case AnimalType.cat:
        return Cat();
      default:
        throw Exception("Unknown animal type: $type");
    }
  }
}

void main(){
  Animal dog = AnimalFactory.createAnimal(AnimalType.dog);
  dog.makeSound(); // "Woof!"
  Animal cat = AnimalFactory.createAnimal(AnimalType.cat);
  cat.makeSound(); // "Meow!"
}
