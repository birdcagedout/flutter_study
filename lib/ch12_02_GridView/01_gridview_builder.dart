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
        appBar: AppBar(title: Text("GridView 연습"),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  final List<String> cities = const ['서울', '인천', '부산', '대구', '대전', '광주', '울산', '세종', '목포', '여수', '광양', '전주', '포항', '구미', '양산'];
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: cities.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: Column(
            children: [
              Text(cities[index], style: TextStyle(fontSize: 15),),
              Image.asset("assets/images/big.jpeg"),
            ],
          )
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.25),
    );
  }
}
