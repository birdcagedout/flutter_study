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
          appBar: AppBar(title: Text("Row crossAxisAlignment 연습"),),
          body: HomeScreen(),
        )
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. Row.crossAxisAlignment = start
        Container(
          color: Colors.yellow[100],
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,                 // mainAxisAlignment: start(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
              Text("CrossAxisAlignment.start"),
            ],
          ),
        ),

        // 2. Row.crossAxisAlignment = center
        Container(
          color: Colors.yellow[300],
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,                 // mainAxisAlignment: start(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
              Text("CrossAxisAlignment.center"),
            ],
          ),
        ),

        // 3. Row.crossAxisAlignment = end
        Container(
          color: Colors.yellow[500],
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,                 // mainAxisAlignment: start(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
              Text("CrossAxisAlignment.end"),
            ],
          ),
        ),

        // 4. Row.crossAxisAlignment = baseline (Text 밑선 맞추기)
        Container(
          color: Colors.yellow[600],
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.baseline,     // mainAxisAlignment: start(기본값)
                // textBaseline: TextBaseline.ideographic,              // baseline 사용하려면 필수적
                children: [
                  Text('100', style: TextStyle(fontSize: 35),),
                  Text('cm', style: TextStyle(fontSize: 10),),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,         // mainAxisAlignment: start(기본값)
                textBaseline: TextBaseline.ideographic,                  // baseline 사용하려면 필수적
                children: [
                  Text('100', style: TextStyle(fontSize: 35),),
                  Text('cm', style: TextStyle(fontSize: 10),),
                  // Spacer(),
                  Text("CrossAxisAlignment.baseline"),
                ],
              ),
            ],
          ),
        ),

        // 5. Row.crossAxisAlignment = stretch
        Container(
          color: Colors.yellow[700],
          margin: EdgeInsets.only(bottom: 10),
          // height: 100,                                                 // stretch를 적용하려면 constraint가 필요하다
          child: IntrinsicHeight(                                         // Container에 height를 지정하거나, IntrinsicHeight로 감싸야 한다.
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,             // mainAxisAlignment: start(기본값)
              children: [
                Container(width: 50, height: 70, color: Colors.red,),
                Container(width: 50, height: 50, color: Colors.green,),
                Container(width: 50, height: 100, color: Colors.blue,),
                Text("CrossAxisAlignment.stretch\n + IntrinsicHeight"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
