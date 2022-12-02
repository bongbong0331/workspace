
import 'dart:async';

/// asBroadcastStream


void main(){

  final controller = StreamController();
  // final stream = controller.stream;
  // 기본적으로 스트림 리스닝은 한번만 할 수 있다 .
  // 그러면 여러번 리스너를 만들 수 있을까?? 그 해답은?
  final stream = controller.stream.asBroadcastStream(); // 마치 전체 방송과 같다

  // 구독자 1

  stream.listen((event) => print("기다리다 지쳐 넘어 온 너 : $event"));

  controller.add("빅게임");
  controller.add(1);
  controller.add(2);

  // 두번째 리스너 (구독자) 만들어 보기
  stream.listen((event) => print("2번째 구독자 : $event"));

  stream.listen((event) => print("3번째 구독자 : $event"));

  controller.add("333333");

  print("main end 비동기 확인");

}