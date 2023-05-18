import 'dart:async';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<int> funcA() {
    return Future.delayed(Duration(seconds: 3), () {return 10;});
  }

  Future<int> funcB(int arg) {
    return Future.delayed(Duration(seconds: 2), () {return arg * arg; });
  }

  Future<int> calcFunc() async {
    int aResult = await funcA();
    int bResult = await funcB(aResult);
    return bResult;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("async, await 연습"),),
        body: Center(
          child: FutureBuilder(
            future: calcFunc(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Text('Data: ${snapshot.data}'),
                );
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(),
                    ),
                    Text('waiting...'),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
