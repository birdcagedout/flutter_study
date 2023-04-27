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
        appBar: AppBar(title: Text("SingleChildScrollView"),),
        body: HomeScreen(),
      ),
    );
  }
}

// 여러개의 위젯이 있고, 그 중 하나가 SingleChildScrollView인 경우
// (최상위 위젯이 SingleChildScrollView가 아닌 경우)
// ==> 그 child만 스크롤 동작할까? ==> 안 됨!!
// [결론]: SingleChildScrollView는 반드시 (사용자 위젯 중에서) 최상위 위젯이어야 한다!! (MaterialApp, Scaffold같은 거 빼고)

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          height: 300,
        ),
        // Container(
        //   color: Colors.green,
        //   height: 200,
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.blue,
            height: 1000,
          ),
        )
      ],
    );
  }
}
