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
        appBar: AppBar(title: Text("Stack IndexedStack 연습"),),
        body: HomeScreen(),
      ),

    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print("MediaQuery.of(context).size.height: ${MediaQuery.of(context).size.height}");           // 932.0
    print("MediaQuery.of(context).padding.top: ${MediaQuery.of(context).padding.top}");           // 0.0
    print("Scaffold.of(context).appBarMaxHeight: ${Scaffold.of(context).appBarMaxHeight}");       // 115.0
    print("AppBar().preferredSize.height: ${AppBar().preferredSize.height}");                     // 56.0
    print("kToolbarHeight: $kToolbarHeight");                                                     // 56.0

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight!, // AppBar를 제외한 나머지 크기
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.yellow,
        )
      ],
    );
  }
}
