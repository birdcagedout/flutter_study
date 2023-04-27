// TextField의 이벤트 리스너 사용법
// https://docs.flutter.dev/cookbook/forms/text-field-changes

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
        appBar: AppBar(title: Text("TextField 연습2\naddListener(콜백) dispose()"),),
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

  // TextField 이벤트 발생시 호출되는 콜백함수: void Function() 타입
  void onTextEntered() {
    print("[Text 입력됨] ${controller.text}");
  }

  @override
  void initState() {
    super.initState();

    // controller에 addListener
    controller.addListener(onTextEntered);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: TextStyle(fontSize: 15),
          controller: controller,                           // TextField 생성자의 controller 파라미터로 넘겨준다
        ),

        ElevatedButton(
          onPressed: () {
            print('[Button 클릭됨] ${controller.text}');    // controller.text로 TextField에 입력된 문자를 가져온다.
          },
          child: Text("제출"),
        ),
      ],
    );
  }


  @override
  void dispose() {
    // controller 제거: dispose만 호출 해도 됨(removeListener 호출된다.)
    controller.dispose();

    super.dispose();
  }
}
