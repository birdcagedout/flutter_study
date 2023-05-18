void main() {

  // 1. Future객체=generic
  Future<int> num = Future.value(1);
  Future<String> name = Future.value('코드팩토리');

  // 2. 함수 내부에서 Future.delayed 사용하는 경우
  addNum(1, 1);
  addNum(2, 2);

}


void addNum(int num1, int num2) {
  print("함수 시작...");

  // 서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('계산중: $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료...');
}

// <실행결과>
// 함수 시작...
// 함수 완료...
// 함수 시작...
// 함수 완료...

// 계산중: 1 + 1 = 2
// 계산중: 2 + 2 = 4