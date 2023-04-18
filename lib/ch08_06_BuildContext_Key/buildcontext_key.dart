// 1. BuildContext 객체: 위젯트리, 엘리먼트 트리 정보를 구성하는 중요한 정보를 담은 객체
// 2. Key 객체: 위젯들을 식별하는 역할


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {

  // 2. Key: 모든 위젯은 키를 가질 수 있고, 키는 각 위젯을 식별하는데 사용된다.
  // 동일 class의 위젯 객체를 여러개 만들어서 사용할 때 중요한 역할을 한다. (특히 stateful 위젯이 여러 개인 경우 각각의 state에서 위젯을 식별할 필요가 있다)
  // - stateless 위젯의 경우: 데이터를 모두 위젯이 가지고 있으므로 Key로 식별하지 않아도 객체를 식별하는데 크게 문제가 되지 않는다.
  // -
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}




class _MyAppState extends State<MyApp> {
  late bool enabled;
  late String stateText;

  @override
  void initState() {
    super.initState();          // initState()의 맨 첫부분에 위치

    // 초기화 로직
    enabled = false;
    stateText = 'disabled';
  }

  // IconButton(checkbox) 클릭했을 때 이벤트 핸들러
  void changeCheck() {
    setState(() {
      if (enabled) {
        stateText = 'disabled';
        enabled = false;
      } else {
        stateText = 'enabled';
        enabled = true;
      }
    });
  }


  // 1. BuildContext: stateless위젯의 build() 함수 또는 stateful위젯의 state객체의 build() 함수의 매개변수로 전달되는 객체
  // BuildContext 객체는 build()에서 리턴되는 위젯당 1개씩 만들어지는데,
  // 위젯트리에서 위젯의 위치(가장 중요), 상위위젯, 하위위젯 정보 등 다양한 정보(위젯 정보에 따라 동적으로 변한다)를 가지고 있다.

  // 또 엘리먼트 트리를 구성하는 Element(ComponentElement, RenderObjectElement)가 BuildContext를 implements한 객체이므로
  // 사실상 BuildContext객체가 엘리먼트 트리를 구성한다고 보아도 된다.

  // ex. 상위 위젯 객체 얻기: MyApp? widget = context.findAncestorWidgetOfExactType<MyApp>();
  // ex. 화면 사이즈(가로) 얻기: double width = MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Test"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: changeCheck,   // 이벤트 핸들러
                  icon: (enabled ? Icon(Icons.check_box, size: 30,) : Icon(Icons.check_box_outline_blank, size: 30,)),
                  color: Colors.amber,
                ),
              ),
              Expanded(
                child: Container(
                  // padding: EdgeInsets.only(left: 16),
                  child: Text('$stateText', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
