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
        appBar: AppBar(title: Text('AlertDialog를 Stateful로 만들기\n(CheckBox값 저장하기)'),),
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
  
  bool? isChecked_false = true;
  bool? isChecked_true = true;

  // 1. AlertDialog_dismissible_false
  void onAlertDialog_dismissible_false() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialogFalse(isChecked_false);
      }
    );
  }

  // 2. AlertDialog_dismissible_false
  void onAlertDialog_dismissible_true() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialogTrue(isChecked_true);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // AlertDialog 2개
        ElevatedButton(
          onPressed: onAlertDialog_dismissible_false,
          child: Text("1. AlertDialog (barrierDismissible: false)"),
        ),
        ElevatedButton(
          onPressed: onAlertDialog_dismissible_true,
          child: Text("2. AlertDialog (barrierDismissible: true)"),
        ),
      ],
    );
  }
}


// 1번 다이얼로그(barrierDismissible = false)
class AlertDialogFalse extends StatefulWidget {
  final isChecked;
  const AlertDialogFalse(bool? this.isChecked, {Key? key}) : super(key: key);

  @override
  State<AlertDialogFalse> createState() => _AlertDialogFalseState();
}

class _AlertDialogFalseState extends State<AlertDialogFalse> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("이용약관"),
      content: Column(
        mainAxisSize: MainAxisSize.min,     // 넣지 않으면 화면 전체 크기로 나온다
        children: [
          Text("네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화, 이메일로 받을 수 있습니다."),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Text("수신 동의"),
            ],
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK")
        ),
      ],
    );
  }
}


// 2번 다이얼로그(barrierDismissible = true)
class AlertDialogTrue extends StatefulWidget {
  const AlertDialogTrue(bool? isChecked_true, {Key? key}) : super(key: key);

  @override
  State<AlertDialogTrue> createState() => _AlertDialogTrueState();
}

class _AlertDialogTrueState extends State<AlertDialogTrue> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("이용약관"),
      content: Column(
        mainAxisSize: MainAxisSize.min,     // 넣지 않으면 화면 전체 크기로 나온다
        children: [
          Text("네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화, 이메일로 받을 수 있습니다."),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Text("수신 동의"),
            ],
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK")
        ),
      ],
    );
  }
}
