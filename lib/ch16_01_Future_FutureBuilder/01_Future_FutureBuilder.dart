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
        appBar: AppBar(title: Text("Future, FutureBuilder 연습"),),
        body: HomeScreen(),
      ),
    );
  }
}


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<int> sum() {
    int intMax = -1 >>> 1;    // 111...111 ==> bitwise shift right zero fill operator
    var sumResult = 0;

    return Future<int>(() {
      for (int i = 0; i < 5000000000; i++) {
        if (sumResult > intMax - i) {
          print("int value maxed out: sum=$sumResult (when i=$i)");
          break;
        } else {
          sumResult += i;
        }
      }
      return sumResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: sum(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {

        // snapshot에 data가 들어온 경우
        if (snapshot.hasData) {
          return Center(
            child: Text('${snapshot.data}', style: TextStyle(color: Colors.black, fontSize: 30),),
          );
        }

        // snapshot에 data가 없는 경우
        return Center(
          // child: Text('waiting...', style: TextStyle(color: Colors.black, fontSize: 30)),
          child: CircularProgressIndicator(color: Colors.red, backgroundColor: Colors.blue),
        );
      }
    );
  }
}
