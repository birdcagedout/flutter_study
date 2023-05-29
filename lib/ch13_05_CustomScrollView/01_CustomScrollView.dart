import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _floating = false;
  final _pinned = true;
  final _snap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          // 앱바
          SliverAppBar(
            expandedHeight: 150,                // 확장 상한값
            floating: _floating,
            pinned: _pinned,
            snap: _snap,
            elevation: 20,
            backgroundColor: Colors.pink,

            leading: IconButton(
              icon: Icon(Icons.expand),
              onPressed: () {},
            ),

            title: Text("SliverAppBar 연습\n(f: $_floating, p: $_pinned, s: $_snap)"),

            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homescreen/greensea.jpg"),
                  fit: BoxFit.fill,
                )
              ),
            ),

            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_alert),),
              IconButton(onPressed: () {}, icon: Icon(Icons.public_off),),
            ],
          ),

          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text("Hello World Item $index"),
                );
              }
            ),
            itemExtent: 50.0,
          ),
        ],
      ),
    );
  }
}
