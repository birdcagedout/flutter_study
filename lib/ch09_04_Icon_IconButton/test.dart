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

  void onPressed() {
    print("pressed");
    setState(() {
      isOn = isOn ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Icon, IconButton 테스트")),
        body: Column(
          children: [
            Icon(Icons.alarm, color: Colors.red, size: 100,),
            FaIcon(FontAwesomeIcons.bell, color: Colors.green, size: 100,),
            IconButton(
              padding: EdgeInsets.all(0),
              constraints: BoxConstraints(minWidth: 0, minHeight: 0),
              onPressed: onPressed,
              icon: isOn ? Icon(Icons.lightbulb, color: Colors.amber, size: 100,) : Icon(Icons.lightbulb_outline, color: Colors.black, size: 100,)
            ),
            GestureDetector(onTap: onPressed,
            child: Icon(isOn ? Icons.lightbulb : Icons.lightbulb_outline, color: isOn ? Colors.amber : Colors.black, size: 100),
            )
          ],
        ),
      ),
    );
  }
}
