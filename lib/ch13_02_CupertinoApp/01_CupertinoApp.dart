// 플랫폼 API를 적용하여
// Android에는 MaterialApp 적용
// iOS에는 CupertinoApp 적용

import 'dart:io';                             // 플랫폼 API
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  Widget platformUI() {
    if (Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(middle: Text('Cupertino Title'),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(child: Text('Click'), onPressed: () {}),
              Center(
                child: Text('Hello World'),
              )
            ],
          ),
        ),
      );
    } else if (Platform.isAndroid) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('Material Title'),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Click')),
              Center(child: Text('Hello World'))
            ],
          ),
        ),
      );
    } else {
      return Text(
        'Unknown Device',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      );
    }
  } 


  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}
