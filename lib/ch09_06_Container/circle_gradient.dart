// 원형 Container
// decoration: BoxDecoration(shape: BoxShape.curcle)

// 원형 Image
// decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage(), fit:))


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container 연습\n(circle, gradient)")),
      body: Column(
        children: [
          // 1. 원형 Container
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.circle, 
            ),
          ),

          // 2. Image Container
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/face.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 3. gradient
          Container(
            width: MediaQuery.of(context).size.width,     // MediaQuery.of(context)를 쓰려면 현재 context의 상위에 MaterialApp이 위치해야 한다.
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.yellow, Colors.green, Colors.blue, Colors.deepPurple],
              ),
            ),
            child: Center(
              child: Text(
                "LinearGradient",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}
