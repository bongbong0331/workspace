

import 'dart:async';

void main(){

  // 자바 스트림 ---> 비 동기를 지원하지 않는다 !
  // 다트 스트림 ---> 자바 스트림 + 비 동기를 지원한다 .!

  // 다트 스트림 클래스는 다트:코어 에서 사용 가능 다트:어싱크 패키지 녀석들 사용가능
  // import '다트:어싱크'; 여기는 더 많은 기능을 가지고 있는 녀석이다 !!!

  print("실행1");
  Stream stream1 = Stream.value(100);
  print("실행2");
  stream1.listen((v) { print("여기로 넘어온 값 : $v");});
  print("구분자값1 ----");
  print("실행3");

  print("구분자값2---------");
  // Future 에서는 한번 이벤트가 넘어오면 종료합니다 ! 
  
  // 새로운 스트림 생성 ! -- 한번에 넘어옴 ! 
  Stream.value([1,2,3,4,5,6,7]).forEach((e) { print("여기는 : $e");});
  print("restart 1");
  //주기적인 
  var stream = Stream.periodic(Duration(microseconds: 10000), (x) => (x + 1)).take(19);
  stream.listen((event) {print("이벤트 넘어온다 ~ : $event");});
  print("restart 2");
  print("구분자값3----");


  print("-2-----------------------------------------------");

  // Future 에서는 기다렸다가 하나의 값을 받을 수 있는 개념 !
  // Stream 은 주기적으로 여러번 계속 무언가를 받을 수 있다 !

  // 스트림 위에 확장 개념으로 자신이 가지고 있는 스트림들을 다양하게 통제 할 수 있다
  // 구독자, 관찰자 패턴 일부 !
  // 함수 한번 호출로 여러번 값을 전달 받았으면 좋겠다 라는 생각으로 개발 되었다.

  var controllerStream1 = StreamController();

  var controllerStream2 = StreamController(
    onPause: () => print("1. Paused"),
    onResume: () => print("2. Resumed"),
    onCancel: () => print("3. onCancel"),
    onListen: () => print("4. onListren"),
  );

  controllerStream2.stream.listen
    ((event) => print("event : $event"),
    onDone: () => print("Done"),
    onError: (error) => print("error : $error <------"),
  );

  // 스트림에 구독자가 있는지 확인하려면 hasListener 를 사용
  // 즉 리스너를 만들어 놓았는가 확인 코드

  var hasListener = controllerStream2.hasListener;
  print("hasListener : $hasListener");

  






}

