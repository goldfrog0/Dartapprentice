void main(List<String> args) {
  const iLove = 'Dart';
  print(iLove.runtimeType);

  double? fontsize;

  fontsize = null;
  fontsize ??= 20.0;



  print(fontsize);

  int? age;
  print(age?.isNegative);

}
