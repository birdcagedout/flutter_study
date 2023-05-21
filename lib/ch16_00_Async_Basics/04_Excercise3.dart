// inflearn codefactory 강좌에 올라왔던 질문입니다.
// 문제점을 발견하고 해결해보세요
// https://www.inflearn.com/questions/769559/future-async-await

// 질문1: Your order is Large Latte가 출력되어야 할 것 같은데,
//        Your order is Instance of 'Future<String>'가 출력된다. 뭐가 잘못된 것일까?

// 답변1: Your Order is Large Latte라는 결과값을 받고싶으시면 fetchUserOrder()를 await fetchUserOrder()로 변경하셔야합니다.
//        Future는 비동기 실행으로 반환 받을 수 있는 값을 이야기합니다.
//        await를 하지 않으면 비동기 실행이 끝날때까지 기다리지 않기때문에 미래에 받는 타입인 Future 타입이 그대로 반환됩니다.
//        await를 하게되면 비동기 작업이 끝날때까지 기다리기때문에 Future 타입을 벗겨낸 실제 타입, 즉 String 값을 받을 수 있습니다.

// 질문2: Instance of 'Future<String>' 이렇게만 나오는데요?

// 답변2: 아 그 이유는 main() 함수에서도 await를 하셔야하기때문입니다. 이유는 위 설명드린바와 같습니다.
//        물론 main 함수도 async로 설정하셔야합니다.


void main() async {
  print(await orderMessage());
}

Future<String> orderMessage() async {
  var order = await Order();
  return 'Your order is $order';
}

Future<String> Order() async {
  return await Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
}