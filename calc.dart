mixin Adder {
  void sum(int a, int b) {
    print(a + b);
  }
}

class Calculator with Adder {}

void main(List<String> args) {
  final calc = Calculator();
  calc.sum(3, 4);
}
