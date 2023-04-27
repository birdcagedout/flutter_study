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
        appBar: AppBar(title: Text("Checkbox, Radio 연습"),),
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

  // 위젯 변수들
  bool isChecked = false;             // 체크박스
  String? selectedPlatform;           // 라디오버튼
  double sliderValue = 0;             // 슬라이더
  bool isOn = false;                  // 스위치


  // 체크박스 변경시 콜백
  void onCheckboxChanged(bool? value) {
    print("기존값: $isChecked\t 현재값: $value");
    setState(() {
      isChecked = value ?? isChecked;
    });
  }

  // 라디오버튼 변경시 콜백 ==> 기존 것 선택하면 호출 안 됨
  void onRadioChanged(String? value) {
    print("기존값: $selectedPlatform\t 현재값: $value");
    setState(() {
      selectedPlatform = value;
    });
  }

  // 슬라이더 변경시 콜백
  void onSliderChanged(double value) {
    print("기존값: $sliderValue\t 현재값: $value");
    setState(() {
      sliderValue = value;
    });
  }

  // 스위치 변경시 콜백
  void onSwitchChanged(bool value) {
    print("기존값: $isOn\t 현재값: $value");
    setState(() {
      isOn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // 체크박스
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: onCheckboxChanged,
            ),
            Text("현재 Checkbox의 값은 $isChecked입니다"),
          ],
        ),

        Padding(padding: EdgeInsets.all(20)),

        // 1번 라디오버튼
        Row(
          children: [
            Radio(
              value: "Android",
              groupValue: selectedPlatform,
              onChanged: onRadioChanged
            ),
            Text("Android"),
          ],
        ),

        // 2번 라디오버튼
        Row(
          children: [
            Radio(
                value: "iOS    ",
                groupValue: selectedPlatform,
                onChanged: onRadioChanged
            ),
            Text("iOS"),
          ],
        ),

        // 3번 라디오버튼
        Row(
          children: [
            Radio(
                value: "Windows",
                groupValue: selectedPlatform,
                onChanged: onRadioChanged
            ),
            Text("Windows"),
          ],
        ),

        Padding(padding: EdgeInsets.all(20)),

        // 슬라이더
        Slider(
          value: sliderValue,
          min: 0,
          max: 100,
          onChanged: onSliderChanged,
        ),

        Padding(padding: EdgeInsets.all(20)),

        // 스위치
        Switch(value: isOn, onChanged: onSwitchChanged),
      ],
    );
  }
}
