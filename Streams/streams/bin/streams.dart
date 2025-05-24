//import 'package:streams/streams.dart' as streams;
import 'dart:io';

Future<void> main () async {
  final file = File('assets/text.txt');
  final stream = file.openRead();
  stream.listen(
  (data) {
    print(data.length);
  },
  );
}
