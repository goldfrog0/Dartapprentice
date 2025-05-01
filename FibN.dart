void main(List<String> args) {
  const int nthFib = 50;

  int fib1 = 0;
  int fib2 = 1;
  int fibCarry = 0;
  (nthFib == 0) ? print(fib1) : print(fib2);

  for (var i = 0; i <= nthFib - 2; i++) {

    fibCarry = fib1 + fib2;
    fib1 = fib2;
    fib2 = fibCarry;
    print(fibCarry);

  }

}
