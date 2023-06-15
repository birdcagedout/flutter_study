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

// 이렇게 MaterialApp과 같은
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp's context: ${context.hashCode}");
    return MaterialApp(
      home: Scaffold(
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
      )
    );
  }
}
