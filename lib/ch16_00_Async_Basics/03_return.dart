void main() async {

  // 1. Future객체=generic
  Future<int> num = Future.value(1);
  Future<String> name = Future.value('코드팩토리');

  // 2. 함수 내부에서 Future.delayed 사용하는 경우
  //await addNum(1, 1);
  //await addNum(2, 2);

  // 3. await + async: 함수 내에서 실행순서 순차화 (addNum 함수 선언에 async, 함수 내부에 await)

  // 4. await + async: 3 + 함수 호출하는 순서까지도 순차화 (main 함수 선언에 async, 함수 내부에 await)
  //                    + await는 Future를 리턴하는 함수만 가능하므로 addNum 선언부를 Future<void>로 변경


  // 5. async 함수에서 리턴값 받기:
  //    1) addNum에서 리턴받을 변수 선언
  //    2) addNum의 리턴타입을 Future<int>로 고치고, 함수 끝에 int를 리턴
  //    3) 값 확인하는 print
  var result1 = await addNum(1, 1);
  var result2 = await addNum(2, 2);

  print('result1: $result1, result2: $result2');
}


Future<int> addNum(int num1, int num2) async {
  print("함수 시작... $num1 + $num2");

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산중: $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료... $num1 + $num2\n');

  return num1 + num2;
}