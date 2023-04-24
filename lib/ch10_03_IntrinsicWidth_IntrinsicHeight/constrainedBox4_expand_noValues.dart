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
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.red,
          child: Text("적용 전(150x150)"),
        ),

        Expanded(
          child: ConstrainedBox(                        // ConstrainedBox로 감싸고 (==> 바로 상위에 boundary를 설정해줄 수 있는 Expanded 위젯으로 감싸주면 에러 나지 않는다.)
            constraints: BoxConstraints.expand(),       // BoxConstraints.expand() 사용 ==> 실제결과: 의도한 대로 yellow Container가 확장할 수 있는 최대한으로 확장됨
            child: Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: Text("적용 후(150x150)"),
            ),
          ),
        )
      ],
    );
  }
}
