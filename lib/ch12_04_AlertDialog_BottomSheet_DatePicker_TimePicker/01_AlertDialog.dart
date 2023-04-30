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
        appBar: AppBar(title: Text('AlertDialog 연습'),),
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

  // 1 AlertDialog (barrierDismissible: false)
  void onAlertDialog_dismissible_false() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("이용약관"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화, 이메일로 받을 수 있습니다."),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {},),
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
    );
  }


  // 2 AlertDialog (barrierDismissible: true)
  void onAlertDialog_dismissible_true() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("이용약관"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화, 이메일로 받을 수 있습니다."),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {},),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // AlertDialog 2개
          ElevatedButton(onPressed: onAlertDialog_dismissible_false, child: Text("1 AlertDialog (barrierDismissible: false)")),
          ElevatedButton(onPressed: onAlertDialog_dismissible_true, child: Text("2 AlertDialog (barrierDismissible: true)")),
        ],
      ),
    );
  }
}
