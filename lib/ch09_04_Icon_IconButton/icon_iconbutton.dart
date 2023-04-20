import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;
  // Icon buttonIcon = Icon(Icons.lightbulb_outline, size: 200, color: Colors.black, key: UniqueKey(),);

  void onClicked() {
    print("onPressed() 변경 전: isOn=$isOn");
    setState(() {
      // print("onPressed() 변경 전: isOn=$isOn, buttonIcon=${buttonIcon.icon.toString()}");
      isOn = isOn ? false : true;
      // buttonIcon = isOn ? Icon(Icons.lightbulb, size: 200, color: Colors.amber, key: UniqueKey(),) : Icon(Icons.lightbulb_outline, size: 200, color: Colors.black, key: UniqueKey(),);
      // print("onPressed() 변경 후: isOn=$isOn, buttonIcon=${buttonIcon.icon.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Icon, IconButton 테스트")),
        body: Column(
          children: [
            Icon(Icons.alarm, size: 100, color: Colors.red,),
            FaIcon(FontAwesomeIcons.bell, size: 100, color: Colors.green),
            IconButton(icon: isOn ? Icon(Icons.lightbulb, size: 200, color: Colors.amber) : Icon(Icons.lightbulb_outline, size: 200, color: Colors.black), onPressed: onClicked),
          ],
        ),
      ),
    );
  }
}
