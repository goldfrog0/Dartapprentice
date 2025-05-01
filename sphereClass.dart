
class Sphere {
  const Sphere({
      this.radius = _radius,
  }) : assert(radius >= 0);

  static const _radius = 0;
  final num pi = 3.14159;
  final num radius;

  num get volume => (4/3)*pi*radius*radius*radius;
  num get surfaceArea => 4*pi*radius*radius;

}


void main(List<String> args) {

  const ball = Sphere(radius: 2);
  print(ball.volume);
  print(ball.surfaceArea);
}
