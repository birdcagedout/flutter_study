// inflearn codefactory 강좌에 올라왔던 질문입니다.
// 문제점을 발견하고 해결해보세요
// https://www.inflearn.com/questions/769559/future-async-await

// 질문: Your order is Large Latte가 출력되어야 할 것 같은데,
//       Your order is Instance of 'Future<String>'가 출력된다. 뭐가 잘못된 것일까?


void main() {
  print(orderMessage());
}

String orderMessage() {
  var order = Order();
  return 'Your order is $order';
}

Future<String> Order() async {
  return await Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
}