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
        appBar: AppBar(title: Text("Row mainAxisAlignment 연습"),),
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
        // 1. Row.mainAxisAlignment = start
        Container(
          color: Colors.yellow[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,                 // crossAxisAlignment: center(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
            ],
          ),
        ),

        // 2. Row.mainAxisAlignment = end
        Container(
          color: Colors.yellow[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,                 // crossAxisAlignment: center(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
            ],
          ),
        ),

        // 3. Row.mainAxisAlignment = center
        Container(
          color: Colors.yellow[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,               // crossAxisAlignment: center(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
            ],
          ),
        ),

        // 4. Row.mainAxisAlignment = spaceAround
        Container(
          color: Colors.yellow[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,         // crossAxisAlignment: center(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
            ],
          ),
        ),

        // 5. Row.mainAxisAlignment = spaceBetween
        Container(
          color: Colors.yellow[500],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,        // crossAxisAlignment: center(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
            ],
          ),
        ),

        // 6. Row.mainAxisAlignment = spaceEvenly
        Container(
          color: Colors.yellow[600],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,         // crossAxisAlignment: center(기본값)
            children: [
              Container(width: 50, height: 70, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.green,),
              Container(width: 50, height: 100, color: Colors.blue,),
            ],
          ),
        ),
      ],
    );
  }
}
