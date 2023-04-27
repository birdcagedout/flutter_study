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
        appBar: AppBar(title: Text("TextField 연습1\nTextEditingController"),),
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

  // State 클래스에서 TextEditingController를 생성해서
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: TextStyle(fontSize: 15),
          controller: controller,                    // TextField 생성자의 controller 파라미터로 넘겨준다
        ),

        ElevatedButton(
          onPressed: () {
            print('[Text]: ${controller.text}');    // controller.text로 TextField에 입력된 문자를 가져온다.
          },
          child: Text("제출"),
        ),
      ],
    );
  }
}
