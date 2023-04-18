// Stateless 위젯에서 key 사용 안 했을 때 테스트

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyColorListWidget());
}

// 컬러 박스(stateless 위젯)
class MyColorItemWidget extends StatelessWidget {
  Color color;
  MyColorItemWidget(this.color);

  Color get col => color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: color,
      width: 150,
      height: 150,
    ));
  }
}

// 상위 위젯(stateful 위젯): 하위에 컬러 박스(stateless 위젯)를 만들고 위치를 바꾸는 역할
class MyColorListWidget extends StatefulWidget {
  const MyColorListWidget({Key? key}) : super(key: key);

  @override
  State<MyColorListWidget> createState() => _MyColorListWidgetState();
}

class _MyColorListWidgetState extends State<MyColorListWidget> {
  List<MyColorItemWidget> widgetList = [
    MyColorItemWidget(Colors.red),
    MyColorItemWidget(Colors.green),
  ];


  // 버튼 눌렸을 때 이벤트 핸들러
  void onChange() {
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
      print('widgetList[0]: ${widgetList[0].id}, widgetList[1]: ${widgetList[1].col.value.toRadixString(16)}');
    });   // setState();
  }

  @override
  Widget build(BuildContext context) {
    print('state.build() 실행되었습니다.');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Key를 사용하지 않은 stateless 위젯'),),
        body: Column(
          children: [
            Row(children: widgetList),
            ElevatedButton(onPressed: onChange, child: Text('위치바꾸기')),
          ],
        ),
      ),
    );
  }
}
