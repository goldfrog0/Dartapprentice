
import 'user1.dart';

void main(List<String> args) {

  const jb = User(id: 1, name: 'JB Lorenzo');
  print(jb.toString());

  print(jb.id);

  const anon = User.anonymous();
  print(anon.toString());

}
