import 'package:data/data.dart' as data;
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  final request = http.Request('GET', url);
  final response = await client.send(request);
  final stream = response.stream;
  await for (var data in stream.transform(utf8.decoder)) {
    print(data);
  }
}
