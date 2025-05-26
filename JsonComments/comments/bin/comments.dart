import 'dart:io';

import 'package:comments/comments.dart' as comments;
import 'dart:convert';
import 'package:http/http.dart' as http;

class Comment {
  Comment({
      required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body,
  });

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
      email: jsonMap['email'] as String,
      body: jsonMap ['body'] as String,
    );
  }

  @override
  String toString() {
    return 'postId: $postId\n'
        'id: $id\n'
        'name: $name\n'
        'email: $email\n'
        'body: $body\n';
  }
}

Future<void> main() async {

  final commentList = <Comment>[];
try {
  final url = 'https://jsonplaceholder.typicode.com/comments';
  final parsedUrl = Uri.parse(url);
  final response = await http.get(parsedUrl);
  final statusCode = response.statusCode;
  if (statusCode == 200) {
    final rawJsonString = response.body;
    final jsonList = jsonDecode(rawJsonString);
    for (var element in jsonList) {
      final comment = Comment.fromJson(element);
      commentList.add(comment);
    }

  } else {
    throw HttpException('$statusCode');
  }


}
on SocketException catch (error) {
  print(error);
} on HttpException catch (error) {
  print(error);
} on FormatException catch (error) {
  print(error);
}

print('Comment lengths: ${commentList.length}');
for (var commentId in commentList) {
  print(commentId.toString());
}

}
