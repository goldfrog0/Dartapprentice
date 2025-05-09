
import 'user1.dart';

void main(List<String> args) {

  const jb = User(id: 1, name: 'JB Lorenzo');
  print(jb.toString());

  print(jb.id);

  const anon = User.anonymous();
  print(anon.toString());

  final List<User> userList = [
        User(id: 1, name: 'Zaku'),
        User(id: 22, name: 'GQuuuuux'),
        User(id: 11, name: 'Zeta')
      ];

  void printUsers() {


    for (var user in userList) {
    print(user.toString());
  }
  }

  printUsers();
}
