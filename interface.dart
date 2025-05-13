abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz Fizz');
  }
}


void main(List<String> args) {
  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Manilla');
  print(temperature);

  final coke = Bottle();
  coke.open();
}
