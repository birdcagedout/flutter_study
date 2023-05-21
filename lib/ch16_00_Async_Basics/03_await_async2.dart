// 리턴값을 이용하지 않는 예제


void main() async {

  // await + async : 함수 내에서 실행순서 순차화 (addNum 함수 선언에 async, 함수 내부에 await)
  await addNum(1, 1);
  await addNum(2, 2);

  // 4. await + async : 3 + 함수 호출하는 순서까지도 순차화 (main 함수 선언에 async, 함수 내부에 await)
  //                    + await는 Future를 리턴하는 함수만 가능하므로 addNum 선언부를 Future<void>로 변경
}


Future<void> addNum(int num1, int num2) async {
  print("함수 시작... $num1 + $num2");

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산완료: $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료... $num1 + $num2\n');
}


// < 실행 결과 >
// 함수 시작... 1 + 1
// 계산완료: 1 + 1 = 2
// 함수 완료... 1 + 1
//
// 함수 시작... 2 + 2
// 계산완료: 2 + 2 = 4
// 함수 완료... 2 + 2