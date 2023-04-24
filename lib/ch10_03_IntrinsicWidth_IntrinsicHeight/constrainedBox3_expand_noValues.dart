import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ConstrainedBox"),),
        body: HomeScreen(),
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(                          // ConstrainedBox로 감싸고 (다른 상위 위젯으로 감싸지 않았음)
      constraints: BoxConstraints.expand(),         // BoxConstraints.expand() 사용 ==> 의도: 가능한 크기만큼 확장, 실제결과: 의도한 대로 전체화면으로 확장됨 (Column 등 위젯으로 감싸서 사용하지 말 것)
      child: Container(
        width: 150,
        height: 150,
        color: Colors.yellow,
        child: Text("적용 후(150x150)"),
      ),
    );
  }
}
