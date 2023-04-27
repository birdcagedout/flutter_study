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
        appBar: AppBar(title: Text("TextField 연습3\nInputDecoration"),),
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
  final controllerID = TextEditingController();
  final controllerPW = TextEditingController();

  // TextField 이벤트 발생시 호출되는 콜백함수: void Function() 타입
  void onTextEntered() {
    print("[Text 입력됨] ID: ${controllerID.text} PW: ${controllerPW.text}");

    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();

    // controller에 addListener
    controllerID.addListener(onTextEntered);
    controllerPW.addListener(onTextEntered);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        // 1. ID 입력창
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            style: TextStyle(fontSize: 15),
            controller: controllerID,                           // TextField 생성자의 controller 파라미터로 넘겨준다

            // decoration
            decoration: InputDecoration(
              labelText: 'ID',
              hintText: 'ID를 입력하세요',
              helperText: '아이디를 잊으셨나요?',
              errorText: controllerID.text.length > 10 ? '10글자 이하만 허용됩니다' : null,
              counterText: '${controllerID.text.length} 글자입니다',
              prefixIcon: controllerID.text.length <= 10 ? Icon(Icons.person, color: Colors.blue,) : Icon(Icons.person, color: Colors.red,),
              border: OutlineInputBorder(),
            ),
          ),
        ),

        // 2. 비밀번호 입력창
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            obscureText: true,                                  // 보안입력=true
            style: TextStyle(fontSize: 15),
            controller: controllerPW,                           // TextField 생성자의 controller 파라미터로 넘겨준다

            // decoration
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: '비밀번호를 입력하세요',
              helperText: '비밀번호를 잊으셨나요?',
              errorText: controllerPW.text.length > 10 ? '10글자 이하만 허용됩니다' : null,
              counterText: '${controllerPW.text.length} 글자입니다',
              prefixIcon: controllerPW.text.length <= 10 ? Icon(Icons.lock, color: Colors.blue,) : Icon(Icons.lock, color: Colors.red,),
              border: OutlineInputBorder(),
            ),
          ),
        ),

        ElevatedButton(
          onPressed: () {
            print('[Button 클릭됨] ID: ${controllerID.text}, PW: ${controllerPW.text}');    // controller.text로 TextField에 입력된 문자를 가져온다.
          },
          child: Text("제출"),
        ),
      ],
    );
  }


  @override
  void dispose() {
    // controller 제거: dispose만 호출 해도 됨(removeListener 호출된다.)
    controllerID.dispose();
    controllerPW.dispose();

    super.dispose();
  }
}
