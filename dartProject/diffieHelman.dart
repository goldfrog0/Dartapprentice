int efficientModulo(int exp, int base, int modulus) {

  int runner = 1;
  int acc = base;
  while (runner < exp) {
    runner += 1;
    acc =  (acc * base) % modulus;
  }
  return acc % modulus;
}



void main(List<String> args) {
  print(efficientModulo(3, 11, 1009));
  print(efficientModulo(5, 11, 1009));
}
