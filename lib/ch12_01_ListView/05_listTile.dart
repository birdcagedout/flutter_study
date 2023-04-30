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
          appBar: AppBar(title: Text("ListView 연습5\nListTile 객체"),),
          body: HomeScreen(),
        )
    );
  }
}


class HomeScreen extends StatelessWidget {
  final List<String> singers = const ['김수희', '김연자', '강수지', '거미', '김세정', 'NS윤지', '달수빈', '산다라박', '설리', '패티김', '이소라', '조혜련', '주현미'];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: singers.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(radius: 35, backgroundImage: AssetImage("assets/images/face.png"),),
          title: Text(singers[index]),
          subtitle: Text("대한민국 여가수"),
          trailing: Icon(Icons.more_vert),
          onTap: () {
            print("[OnTap] ${singers[index]} 클릭됨");
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2, color: Colors.black, indent: 10, endIndent: 10,);
      },
    );
  }
}
