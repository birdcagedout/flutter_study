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
          appBar: AppBar(title: Text("ListView 연습4\nListView.separated() 생성자"),),
          body: HomeScreen(),
        )
    );
  }
}


class HomeScreen extends StatelessWidget {
  final List<String> cities = const ['서울', '인천', '부산', '대구', '대전', '광주', '울산', '세종', '목포', '여수', '광양', '전주', '포항', '구미', '양산'];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cities.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          height: 100,
          child: Text(cities[index], style: TextStyle(fontSize: 20),),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: Colors.black, indent: 10,);
      },
    );
  }
}
