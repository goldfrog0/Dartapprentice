abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }

}

abstract class Bird {
  void fly();
  void layEggs();
}

class Platypus extends Animal with Egglayer implements Comparable {

  Platypus(this.weight);

  int weight = 0;

  @override
  int compareTo(other) {
    return weight.compareTo(other.weight);
  }

  @override
  void eat() {
    print('munch munch');
  }

  @override
  void move() {
    print('Glide Glide');
  }

}

mixin Egglayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

class Robin extends Bird with Egglayer, Flyer {}

void main(List<String> args) {
  final platy = Platypus(22);
  print(platy.isAlive);
  platy.eat();
  platy.move();
  platy.layEggs();
  final robin = Robin();
  robin.layEggs();

  List<Platypus> platypi = [Platypus(2), Platypus(4), Platypus(3)];
  platypi.sort();
  print(platypi.map((thing) => thing.weight));

}
