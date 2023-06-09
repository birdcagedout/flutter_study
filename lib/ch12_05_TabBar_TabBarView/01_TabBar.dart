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


class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar 연습'),
        bottom: TabBar(
          controller: controller,
          // indicatorColor: Colors.pink,
          // dividerColor: Colors.green,
          // labelColor: Colors.yellow,
          // unselectedLabelColor: Colors.white,

          tabs: [
            // Tab(icon: Icon(Icons.add), text: "One",),
            Tab(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Icon(Icons.add), Text("One")],),),
            Tab(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Icon(Icons.rocket), Text("Two")],),),
            Tab(text: "Three",),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Center(child: Text("One Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          Center(child: Text("Two Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          Center(child: Text("Three Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
