import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // 터치하는 동안(isTapped==true) GestureDetector의 child 위젯의 Border를 표시한다
  bool isTapped = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("GestureDetector 연습")),
        body: Column(
          children: [
            GestureDetector(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: isTapped ? Border.all(color: Colors.red, width: 5) : null,
                ),
                child: Image.asset('assets/images/user.png')
              ),

              // 수직방향 drag 시작
              // 사실 그냥 터치만 해도(drag 안해도) call 된다.
              // globalPosition: "화면전체의 좌상단"을 (0,0)으로 본 위치정보(SafeArea 무관, 기준점은 고정)
              // localPosition: "child 위젯의 좌상단"을 (0,0)으로 본 위치정보(**기준점은 고정**)
              //                child가 Container, Center인 경우 Container, Center의 좌상단이 기준이며,
              //                Container의 child인 "Image 위젯이 기준이 아님"에 유의!!
              onVerticalDragStart: (DragStartDetails details) {
                print('[V_Drag_Start ] Global: (${details.globalPosition.dx.toStringAsFixed(3)}, ${details.globalPosition.dy.toStringAsFixed(3)})');
                print('[V_Drag_Start ] Local : (${details.localPosition.dx.toStringAsFixed(3)}, ${details.localPosition.dy.toStringAsFixed(3)})');
                setState(() {
                  isTapped = true;
                });
              },

              // 수직방향 drag 계속: 좌표 계속 찍힘
              onVerticalDragUpdate: (DragUpdateDetails details) {
                print('[V_Drag_Update] Global: (${details.globalPosition.dx.toStringAsFixed(3)}, ${details.globalPosition.dy.toStringAsFixed(3)})');
                print('[V_Drag_Update] Local : (${details.localPosition.dx.toStringAsFixed(3)}, ${details.localPosition.dy.toStringAsFixed(3)})');

                setState(() {
                  isTapped = true;
                });
              },

              // 수직방향 drag 끝남
              onVerticalDragEnd: (DragEndDetails details) {
                print('[V_Drag_Ended ]');

                setState(() {
                  isTapped = false;
                });
              },
            ),
            Column(
              children: [
                // No1. 색깔 기본값
                ElevatedButton(
                  onPressed: () {
                    print("No1 Clicked");
                  },
                  child: Text("No1 Button")
                ),
                // No2. 콜백 null이면 disabled
                ElevatedButton(
                  onPressed: null,
                  child: Text("No2 Disabled")
                ),
                // No3. style(backgroundColor)
                ElevatedButton(
                  onPressed: () {
                    print("No3 Styled(bgColor)");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                  child: Text("No3 backgroundColored"),
                )
              ],
            )
          ],
      ),
    )
    );
  }
}
