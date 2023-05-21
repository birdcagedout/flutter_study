import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream;

  final streamListener = stream.listen((value) {
    print('Listener1: $value');
  });


  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}