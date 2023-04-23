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
        appBar: AppBar(title: Text("Stack IndexedStack 연습"),),
        body: HomeScreen(),
      ),

    );
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index++;
          index = index % 3;
        });
      },
      child: IndexedStack(
        index: index,
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight!, // AppBar를 제외한 나머지 크기
            color: Colors.red,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
