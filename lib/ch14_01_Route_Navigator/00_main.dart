// 화면 전환할 때 사용하는 방법
//  1. Navigator.push
//  Navigator.push(
//    context,
//    MaterialPageRout(
//      builder: (context) => 위젯클래스()
//    ),
//  );

import 'package:flutter/material.dart';
import '00_screen1.dart';
import '00_screen2.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp's context: ${context.hashCode}");
    return MaterialApp(
      home: Screen0()
    );
  }
}

// MyApp 자체에서 MaterialApp을 생성하게 되면 에러 발생 (해당 buildcontext 객체에 Navigator가 없음)
// Exception: Navigator operation requested with a context that does not include a Navigator.

// < 이유: https://stackoverflow.com/questions/44004451/navigator-operation-requested-with-a-context-that-does-not-include-a-navigator >
// It happens because you used a context that doesn't contain a Navigator instance as parent.
//
// Wait, I already have a MaterialApp/WidgetsApp!
// this error can still happen when you use a context that is a parent of MaterialApp/WidgetsApp.
// This happens because when you do Navigator.of(context), it will start from the widget associated to the context used,
// and then go upward in the widget tree until it either finds a Navigator
// or there's no more widgets to iterate through.
// In the first case, everything is fine. In the second, it throws
// Navigator operation requested with a context that does not include a Navigator.
// ==> 해결방법: 그래서 별도의 위젯으로 분리해주었다.
class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Screen0's context: ${context.hashCode}");
    return Scaffold(
      appBar: AppBar(title: Text("Root Screen"),),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Root Screen', style: TextStyle(color: Colors.white, fontSize: 30),),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      debugPrint("MaterialPageRoute's context: ${context.hashCode}");
                      return Screen1();
                    }),
                  );
                },
                child: Text("Go to Screen1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
