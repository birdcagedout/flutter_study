// Future<T>로 "리턴값을 받을 때" 2가지 규칙

// <규칙1>
// Future<T>는 await를 하지 않으면 Future 인스턴스가 그대로 리턴된다.
// Future<T>가 T타입의 값을 받고 싶다면 (비동기 결과값을 받을 때까지) await를 해야 된다


// <규칙2>
// Future<T>의 리턴값을 이용하고 싶다면, 리턴값을 받는 모든 단계에서 await 해야한다.
// (중간에 하나라도 await하지 않으면 그냥 Future 인스턴스가 리턴값이 된다.)
// A함수 내부 --> B함수 내부 --> C함수(asyc로 Future 리턴)의 경우: A에서 리턴값을 이용하려면 A, B, C함수 모두 async로 선언하고 각각의 함수 call에 await해야 한다.



void main() {

  // 1. Future객체=generic
  Future<int> num = Future.value(1);
  Future<String> name = Future.value('코드팩토리');

  print(num);       // Instance of 'Future<int>'
}