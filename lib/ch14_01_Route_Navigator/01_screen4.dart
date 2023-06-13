import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Screen4'),),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Screen4', style: TextStyle(color: Colors.white, fontSize: 30),),
                ElevatedButton(
                  onPressed: () {Navigator.of(context).pop();},
                  child: Text('Pop')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}