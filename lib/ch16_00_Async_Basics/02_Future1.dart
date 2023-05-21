// 리턴값을 이용하지 않는 예제



void main() {

  // 함수 내부에서 Future.delayed 사용하는 경우
  addNum(1, 1);
}


void addNum(int num1, int num2) {
  print("함수 시작...");

  // 서버 시뮬레이션: 바로 리턴한다 ==> 지연시간 후 콜백함수 호출됨
  Future.delayed(Duration(seconds: 2), () {
    print('계산완료: $num1 + $num2 = ${num1 + num2}');
  });


  print('함수 완료...');
}


// <실행결과>
// 함수 시작...
// 함수 완료...

// 계산중: 1 + 1 = 2