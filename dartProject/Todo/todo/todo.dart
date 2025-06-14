import 'dart:io';

class Todo {
  Todo({
      required this.userId,
      required this.id,
      required this.title,
      required this.completed,
  });

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    // TODO: implement toString
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}


void main() {
  var tasks = <String>[];
  var file = File('tasks.txt');
  if (file.existsSync()) {
    tasks = file.readAsLinesSync();
  }

  while (true) {
    stdout.write('Enter a command (add/delete/view/exit): ');
  }

}
