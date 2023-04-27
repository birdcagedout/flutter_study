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
        appBar: AppBar(title: Text("Spacer 연습1"),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/lab_instagram_icon_1.jpg'),
        Image.asset('assets/images/lab_instagram_icon_2.jpg'),
        Image.asset('assets/images/lab_instagram_icon_3.jpg'),
        Spacer(),
        // Expanded(child: Container(color: Colors.grey[200],)),
        Image.asset('assets/images/lab_instagram_icon_4.jpg'),
      ],
    );
  }
}
