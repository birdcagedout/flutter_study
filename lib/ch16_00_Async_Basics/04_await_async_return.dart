// 리턴값을 이용하는 예제


void main() async {


  // 5. async 함수에서 리턴값 받기:
  //    1) addNum에서 리턴받을 변수 선언
  //    2) addNum의 리턴타입을 Future<int>로 고치고, 함수 끝에 int를 리턴
  //    3) 값 확인하는 print

  var result1 = await addNum(1, 1);       // 리턴값을 받으려면 반드시 await 해주어야 한다.
  var result2 = addNum(2, 2);             // await하지 않으면 리턴값이 Future 객체로 나온다.

  print('result1: $result1, result2: $result2');
}


Future<int> addNum(int num1, int num2) async {
  print("함수 시작... $num1 + $num2");

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산완료: $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료... $num1 + $num2\n');

  return num1 + num2;
}


// 함수 시작... 1 + 1
// 계산완료: 1 + 1 = 2
// 함수 완료... 1 + 1
//
// 함수 시작... 2 + 2
// result1: 2, result2: Instance of 'Future<int>'
// 계산완료: 2 + 2 = 4
// 함수 완료... 2 + 2