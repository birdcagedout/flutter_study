import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Screen1'),),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Screen1', style: TextStyle(color: Colors.white, fontSize: 30),),

                ElevatedButton(
                    onPressed: () {Navigator.of(context).pushNamed('/screen2');},
                    child: Text('Go to Screen2')),

                // ElevatedButton(
                    // onPressed: () {Navigator.of(context, rootNavigator: true).pop();},    // 이렇게 해본들 의미없다(black screen)
                    // child: Text('Pop')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}