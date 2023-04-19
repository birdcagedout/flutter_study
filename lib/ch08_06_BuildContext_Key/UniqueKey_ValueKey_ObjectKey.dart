// Key의 종류
// 1) GlobalKey: 앱 전체 영역에서 유일한 Key값
//    - LabeledGlobalKey
//    - GlobalObjectKey
// 2) LocalKey: 현재 키값이 지정된 위젯과 동일레벨(siblings)의 범위에서 유일한 Key값


import 'package:flutter/material.dart';

main() {
  runApp(MyColorListWidget());
}

// ObjectKey 만들기 위한 클래스
class User {
  late String name;
  late int age;
  User(this.name, this.age);
}


// UniqueKey, ValueKey 사용
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
    MyCOLORItemWidget(Colors.red, key: UniqueKey()),
    MyCOLORItemWidget(Colors.blue, key: ValueKey(Colors.blue)),
    MyCOLORItemWidget(Colors.green, key: ObjectKey(User('kkang', 60))),
  ];


  // 버튼 눌렸을 때 이벤트 핸들러
  void onChange() {
    var uniqueKey;
    var valueKey;
    var objectKey;


    // 위젯의 Key값 확인
    for (int i = 0; i < 3; i++)
    if (widgetList.elementAt(i).key is UniqueKey) {
      print("[$i번째 element] UniqueKey입니다.");
      uniqueKey = widgetList.elementAt(i).key;
    } else if (widgetList.elementAt(i).key is ValueKey) {
      print("[$i번째 element] ValueKey입니다.");
      valueKey = widgetList.elementAt(i).key;
    } else if (widgetList.elementAt(i).key is ObjectKey) {
      print("[$i번째 element] ObjectKey입니다.");
      objectKey = widgetList.elementAt(i).key as ObjectKey;
    }

    // ObjectKey.value는 Object 그 자체
    User user = objectKey.value as User;

    print('UniqueKey: ${uniqueKey}, ValueKey: ${valueKey}, ObjectKey: ${objectKey}');
    print('key값($objectKey)으로 위젯을 특정: $user');

    setState(() {
      widgetList.insert(2, widgetList.removeAt(0));
    });   // setState();
  }

  @override
  Widget build(BuildContext context) {
    print('state.build() 실행되었습니다.\n----------------------------------');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Key를 사용한 stateful 위젯 (같은 타입)')),
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
