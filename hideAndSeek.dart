
import 'dart:isolate';

String hideAndSeekLong() {
  var counting = 0;
  for (var i = 1; i <= 10000000000; i++) {
    counting = i;
  }
  return '$counting! Ready or not, here I come!';
}

Future<String> hideAndSeekLongAsync() async {
  var counting = 0;
  await Future(() {
      for (var i = 1; i <= 10000000000; i++) {
      counting = i;
      }
  });
  return '$counting! Ready or not, here I come!';
}

void hideAndSeekPorted(SendPort sendPort) {
  var counting = 0;
  for (var i = 1; i <= 10000000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! Ready or not, here I come!');
}

Future<void> main() async {
// 1
  final receivePort = ReceivePort();
// 2
  final isolate = await Isolate.spawn(
    hideAndSeekPorted,
// 3
    receivePort.sendPort,
  );
// 4
  receivePort.listen((message){
    print(message);
// 5
  receivePort.close();
  isolate.kill();
});
}
