import 'dart:math';

void main(List<String> args) {
  int age = 16;
  print(age);
  age = 30;
  print (age);

  const double rating1 = 22.22;
  const double rating2 = 10.22;
  const double rating3 = 21.23;

  print((rating1 + rating2 + rating3) / 3);

  double a = 2;
  double b = 4;
  double c = -3;

  double root1 = (-b + sqrt(b*b -4*a*c))/(2*a);
  double root2 = (-b - sqrt(b*b -4*a*c))/(2*a);
  print(root1);
  print(root2);
}
