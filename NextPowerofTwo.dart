void main(List<String> args) {

  const int checkMe = 10000001;
  int acc = 0;

  while (checkMe > acc*acc) {
    acc += 1;
    //print(acc);
  }
  print(acc*acc);
}
