import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Future, FutureBuilder 연습"),),
        body: HomeScreen(),
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


  Future<int> sumDelegate() async {
    print("sumDelegate() 시작...");
    int result = await sum();
    // throw 'ERROR메시지';
    print("sumDelegate() 리턴 직전...");
    return result;
  }

  Future<int> sum() {
    int intMax = -1 >>> 1;    // int타입 최대값 변수가 없어서 직접 만듬 111...111 ==> bitwise shift right zero fill operator
    var sumResult = 0;

    print("sum() 시작...");

    return Future<int>(() {
      for (int i = 0; i < 5000000000; i++) {
        if (sumResult > intMax - i) {
          print("int value maxed out: sum=$sumResult (when i=$i)");
          break;
        } else {
          sumResult += i;
        }
      }
      print("sum() 리턴 직전...");
      return sumResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: sumDelegate(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {

        // 에러 처리: 항상 처리하는 것이 바람직하다
        if (snapshot.hasError) {
          return Center(child: Text('1. 에러 발생한 경우: ${snapshot.error.toString()}'));
        }
        // snapshot에 data가 들어온 경우
        else if (snapshot.hasData) {
          return Center(child: Text('2. Data 들어온 경우: ${snapshot.data}'));
        }
        // snapshot에 data가 없는 경우
        else {
          return Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }
}
