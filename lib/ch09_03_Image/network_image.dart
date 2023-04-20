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
        appBar: AppBar(title: Text("Network image 연습")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
            Expanded(child: Image(image: NetworkImage("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"))),
          ],
        ),
      ),
    );
  }
}
