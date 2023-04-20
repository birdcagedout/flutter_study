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
        appBar: AppBar(
          title: Text("Text 위젯 test"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,       // width 전체 쓰겠다.
            children: [
              Text('Hello world'),
              Text(
                'Hello world',
                textAlign: TextAlign.end,
              ),
              Text(
                'Hello World',
                textAlign: TextAlign.center,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.orange,
                fontSize: 30,
                height: 2,
                backgroundColor: Colors.yellow,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.blue,
                // decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              Text(
                "동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세 남산위에 저 소나무 철갑을 두른듯 바람서리 불변함은 우리기상 일세 무궁화 삼천리 화려강산 대한사람 대한으로 길이보전하세 가을하늘 공활한데 높고 구름없이 밝은달은 우리가슴 일편단심일세 무궁화 삼천리 화려강산 대한사람 대한으로 길이보전하세 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라사랑하세 무궁화 삼천리 화려강산 대한사람 대한으로 길이보전하세",
                maxLines: 3,
                // overflow: TextOverflow.visible,      // 자동 개행
                overflow: TextOverflow.ellipsis,        // 끝에 말줄임표
                // overflow: TextOverflow.fade,         // 끝줄 밑부분 흐리게
                // overflow: TextOverflow.clip,         // 생략효과 없음(그냥 짤림)
              ),
              Text.rich(
                TextSpan(
                  text: "HELLO ",
                  children: [
                    TextSpan(
                      text: "WORLD ",
                      style: TextStyle(fontStyle: FontStyle.italic),
                      children: [
                        TextSpan(text: "Welcome "),
                        TextSpan(text: "to ", style: TextStyle(color: Colors.red)),
                      ]
                    ),
                    TextSpan(
                      text: "Flutter",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  ]
                ),
                style: TextStyle(fontSize: 20),
              )
            ]
          ),
        ),
      ),
    );
  }
}
