class User {
  const User({int id = 0, String name = 'anonymous'})
        : assert(id >= 0),
          _id = id,
          _name = name;

  final int _id;
  final String _name;

  const User.anonymous() : this();

  factory User.ray() {
    return User(id: 42, name: 'Ray');
}

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
}

  @override
  String toString() {
  return 'User(id: $_id, name: $_name)';
}

  String toJson() {
    return '{"id": "$_id", "name": "$_name"}';
  }
}
