// 1. Image 위젯 생성라기
// - 원래 Image를 가져와서 Image객체를 생성하려면, 추상클래스인 ImageProvider를 상속받은 다음 4가지 클래스 중 하나를 (Image의 소스에 따라) 먼저 생성한 후
// - Image(image: ImageProvider객체)의 형태로 생성해야 한다.
// - ImageProvider --- AssetImage:    에셋 이미지
// -                |- FileImage:     파일 이미지(폰의 갤러리)
// -                |- MemoryImage:   메모리 이미지
// -                |- NetworkImage:  네트워크 이미지
// -                |- ResizeImage:   소스에서 받아온 이미지를 resize한 이미지(를 생성)
//
// - 하지만 이 방법은 복잡하기 때문에 더 핀리한 Image 클래스의 named constructor를 많이 사용한다.
// - Image.asset()
// - Image.file()
// - Image.memory()
// - Image.network()


// 2. Container에 Image 채우기(fit)

// - Boxfit.fill:       Container 딱맞게 펴기        + 비율 변화 O (잘림 X)
// - Boxfit.contain:        "     안에 쏙 넣기       + 비율 변화 X (잘림 X)

// - Boxfit.cover:      Container 덮어버리기         + 비율 변화 X (잘림 O)
// - Boxfit.none:       원본 그대로                  + 비율 변화 X (잘림 O)

// - Boxfit.FitWidth:   Container 가로만 쏙 들어가게   + 비율 변화 O (잘림 O)
// - Boxfit.FitHeight:  Container 세로만 쏙 들어가게   + 비율 변화 O (잘림 O)
// - Boxfit.scaleDown:  resize 후에 contain         + 비율 변화 X (잘림 X)



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
        appBar: AppBar(title: Text("Image 위젯"),),
        body: Column(
          children: [
            // 1번째 줄: fill, contain, cover, none
            Row(
              children: [
                // 1번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text("1) fill"),
                  ],
                ),

                // 2번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text("2) contain"),
                  ],
                ),

                // 3번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("3) cover"),
                  ],
                ),

                // 4번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.none,
                      ),
                    ),
                    Text("4) none"),
                  ],
                ),
              ],
            ),

            // 2번째 줄: fitWidth, fitHeight, scaleDown
            Row(
              children: [

                // 5번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text("5) fitWidth"),
                  ],
                ),

                // 6번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Text("6) fitHeight"),
                  ],
                ),

                // 7번
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/big.jpeg',
                        width: 100,
                        height: 200,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Text("7) scaleDown"),
                  ],
                ),
              ],
            ),

            // 3번째 줄
            Padding(padding: EdgeInsets.all(30)),

            // 4번째 줄
            Column(
              children: [
                Image.asset(
                  'assets/images/big.jpeg',
                  fit: BoxFit.none,
                ),
                Text("원본사진 (300x300)")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
