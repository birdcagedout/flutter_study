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
        appBar: AppBar(title: Text('PageView 연습'),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  PageController controller = PageController(
    initialPage: 1,
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: (page) {
        print(page);
      },
      children: [
        Container(
          // margin: EdgeInsets.all(20),
          color: Colors.red,
          child: Text('Page 1', style: TextStyle(color: Colors.white, fontSize: 30),),
        ),
        Container(
          // margin: EdgeInsets.all(20),
          color: Colors.green,
          child: Text('Page 2', style: TextStyle(color: Colors.white, fontSize: 30),),
        ),
        Container(
          // margin: EdgeInsets.all(20),
          color: Colors.blue,
          child: Text('Page 3', style: TextStyle(color: Colors.white, fontSize: 30),),
        ),
      ],
    );
  }
}
