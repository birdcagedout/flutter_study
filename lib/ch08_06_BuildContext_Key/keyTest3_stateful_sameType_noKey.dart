// Key를 사용하지 않은 위젯을 식별하는데 문제가 발생하는지 Test3
// - 조건: Stateful 위젯 + 같은 클래스 + key 사용 안 함
// - 결과: 클래스 타입이 같으면 key를 사용하지 않았을 때 ==> 위젯 식별에 문제 생긴다.(식별할 수 없을 수 있다.)


import 'package:flutter/material.dart';

main() {
  runApp(MyColorListWidget());
}


// RED 박스 / GREEN 박스 (stateful 위젯)
class MyCOLORItemWidget extends StatefulWidget {
  Color color;    // 최초 생성할 때 색깔을 정하기 위해 위젯에 color변수 넣음
  MyCOLORItemWidget(this.color, {Key? key}): super(key: key);

  @override
  State<MyCOLORItemWidget> createState() => _MyCOLORItemWidgetState(color);
}

class _MyCOLORItemWidgetState extends State<MyCOLORItemWidget> {
  Color color;
  _MyCOLORItemWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: color,
          width: 150,
          height: 150,
        )
    );
  }
}



// 상위 위젯(stateful 위젯): 하위에 컬러 박스(stateful 위젯)를 만들고 위치를 바꾸는 역할
class MyColorListWidget extends StatefulWidget {
  const MyColorListWidget({Key? key}) : super(key: key);

  @override
  State<MyColorListWidget> createState() => _MyColorListWidgetState();
}

class _MyColorListWidgetState extends State<MyColorListWidget> {
  List<Widget> widgetList = [
    MyCOLORItemWidget(Colors.red),
    MyCOLORItemWidget(Colors.green),
  ];


  // 버튼 눌렸을 때 이벤트 핸들러
  void onChange() {
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
      // print('widgetList[0]: ${widgetList[0]}, widgetList[1]: ${widgetList[1].col.value.toRadixString(16)}');
    });   // setState();
  }

  @override
  Widget build(BuildContext context) {
    print('state.build() 실행되었습니다.');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Key를 사용하지 않은 stateful 위젯 (같은 타입)'),),
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
