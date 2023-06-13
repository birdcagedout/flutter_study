// 화면 전환할 때 사용하는 방법
//  2. Navigator.pushNamed
//  Navigator.pushNamed(
//    context,
//    'route 이름',
//    ),
//  );


import 'package:flutter/material.dart';
import '01_screen1.dart';
import '01_screen2.dart';
import '01_screen3.dart';
import '01_screen4.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/screen1',                 // (일반적으로) The app's home page route is named '/' by default.
      routes: {                                 // Map<String, Widget Function(BuildContext)>
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
      },
    );
  }
}
