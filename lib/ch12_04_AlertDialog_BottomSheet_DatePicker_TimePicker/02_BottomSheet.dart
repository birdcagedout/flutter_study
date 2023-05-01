import 'package:flutter/material.dart';



late BuildContext homescreen_context;
late BuildContext homescreen_child_context;



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('BottomSheet 연습'),),
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

  int count = 0;

  @override
  void initState() {
    super.initState();

    homescreen_context = context;
  }

  // 3 showBottomSheet
  void onShowBottomSheet() {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.amber,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text("추가하기"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text("제거하기"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      }
    );
  }


  // 4 showModalBottomSheet
  void onShowModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.amber,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add),
                title: Text("추가하기"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.remove),
                title: Text("제거하기"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      }
    );
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // BottomSheet 2개
          ElevatedButton(onPressed: onShowBottomSheet, child: Text("3 showBottomSheet()")),
          ElevatedButton(onPressed: onShowModalBottomSheet, child: Text("4 showModalBottomSheet()")),

          // 테스트용 버튼 ==> BottomSheet가 떠있는 상태에서 위쪽 버튼에 이벤트를 가할 수 있는지 테스트
          ElevatedButton(onPressed: () { setState(() {count++;});}, child: Text("TEST: $count")),
          HomeScreenChild(),

        ],
      ),
    );
  }
}


class HomeScreenChild extends StatefulWidget {
  const HomeScreenChild({Key? key}) : super(key: key);

  @override
  State<HomeScreenChild> createState() => _HomeScreenChildState();
}

class _HomeScreenChildState extends State<HomeScreenChild> {
  @override
  Widget build(BuildContext context) {
    homescreen_child_context = context;

    print("homescreen_context == homescreen_child_context: ${homescreen_context == homescreen_child_context}");
    print(homescreen_child_context);
    return Text("");
  }
}
