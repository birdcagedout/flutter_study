import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen2'),),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen2', style: TextStyle(color: Colors.white, fontSize: 30),),

              ElevatedButton(
                  onPressed: () {Navigator.of(context).pop();},
                  child: Text('Pop')),
            ],
          ),
        ),
      ),
    );
  }
}