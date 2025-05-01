class User {
  const User({
      this.id = _anonymousId,
      this.name = _anonymousName,
  }) : assert(id >= 0);

  const User.anonymous() : this();

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  final String name;
  final int id;

  String toJson() {
      return '{"id":$id,"name":"$name"}';
  }

@override
String toString() {
  return 'User(id: $id, name: $name)';
  }
}
