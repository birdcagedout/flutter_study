import 'package:flutter/material.dart';
import 'package:flutter/services.dart';   // rootBundle 이용(assets)

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // rootBundle로 asset 읽어서 반환하는 함수
  Future<String> userRootBundle() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }

  // defaultAssetBundle로 asset 읽어서 반환하는 함수
  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Asset Test')),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/icon/icon.jpg'),
              Image.asset('assets/images/user.png'),

              // 비동기 데이터로 화면을 구성하는 위젯
              FutureBuilder(
                future: userRootBundle(),         // useRootBundle() 호출
                builder: (context, snapshot) {    // useRootBundle() 리턴값이 snapshot에 전달되며, 이 값으로 화면구성
                  return Text('rootBundle: ${snapshot.data}');
                },
              ),
              FutureBuilder(
                future: useDefaultAssetBundle(context),
                builder: (context, snapshot){
                  return Text('DefaultAssetBundle: ${snapshot.data}');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}