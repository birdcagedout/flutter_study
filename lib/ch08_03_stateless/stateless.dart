import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  bool enabled = false;
  String stateText = 'disabled';

  void changeCheck() {
    if (enabled) {
      stateText = 'disabled';
      enabled = false;
    } else {
      stateText = 'enabled';
      enabled = true;
    }
    print("stateText: $stateText, enabled: $enabled");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget Test"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: changeCheck,
                icon: (enabled ? Icon(Icons.check_box, size: 20,) : Icon(Icons.check_box_outline_blank, size: 20,)),
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text('$stateText', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
