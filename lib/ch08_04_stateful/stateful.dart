import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool enabled = false;
  String stateText = 'disabled';

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
                  onPressed: changeCheck,
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
