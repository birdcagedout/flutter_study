import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Screen4'),),
        body: Container(
          color: Colors.yellow,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Screen3', style: TextStyle(color: Colors.white, fontSize: 30),),

                ElevatedButton(
                    onPressed: () {Navigator.of(context).pushNamed('/screen4');},
                    child: Text('Go to Screen4')),

                ElevatedButton(
                    onPressed: () {Navigator.of(context).pop();},
                    child: Text('Pop')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}