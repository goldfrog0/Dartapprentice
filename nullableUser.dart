
class User {
  String? name;
  int? id;
}

void main(List<String> args) {
User user = User()
  ?..name = 'Ray'
  ..id = 42;
}
