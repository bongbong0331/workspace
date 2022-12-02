import 'dart:async';


void main() async {
  // Future 에서는 기다렸다가 하나의 값을 받을 수 있는 개념 !!
  // Stream 은 주기적으로 여러번 계속 무언가를 받을 수 있다 !!!


  // 스트림 위에 확장 개념으로 자신이 가지고 있는 스트림들을 다양하게 통제 할 수 있다 !
  // 구독자, 관찰자 패턴 일부 !
  // 함수 한번 호출로 여러번 값을 전달 받았으면 좋겠다 라는 생각으로 개발 되었다 !!

  var controllerStream1 = StreamController();

  var controllerStream2 = StreamController(
    onPause: () => print("1 Paused"),
    onResume: () => print("2. Resumed"),
    onCancel: () => print("3. onCancel"),
    onListen: () => print("4. onListen"),
  );

  controllerStream2.stream.listen
  ((event)  =>  print("event : $event"),
    onDone: () => print("Done"),
    onError: (error) => print("error   :$error <-----"),
  );

  // 스트림에 구독자가 있는지 확인하려면 hasListener 를 사용
  // 즉 리스너를 만들어 놓았는가 확인 코드
  var hasListener = controllerStream2.hasListener; // true , false 리턴
  print("hasListener : $hasListener");


  // 스트림에 데이터 이벤트를 보내려면 add 또는 addStream 을 보내면 된다 !
  controllerStream2.add(1024);
  controllerStream2.add(1000);
  controllerStream2.add("안녕 트림아 ! ");

  final myStream = Stream<int>.periodic(Duration(milliseconds: 500), (count) => count).take(10);
  // StreamController 컨트롤러는 여러개의 스트림을 관리할 수 있다 .!!!
  await controllerStream2.addStream(myStream);


  // 스트림에 오류 이벤트를 보내려면 addError 또는 addStream을 사용할 수 있다.
  controllerStream2.addError(Exception("Issue 101"));

  // 스트림이 닫혔는지 확인하려면 isClosed 를 사용할 수 있다.
  var isClosed = controllerStream2.isClosed;
  print(isClosed);

  //스트림을 닫으려면 close 를 사용하면 된다.
  controllerStream2.close();
  print("클로즈구분자값1 ----------------------");
  print(controllerStream2.isClosed);
  print("클로즈구분자값2");
  // Done - > 끝났다
  


  print("main end"); // 비동기인지 확인하는 코드

  
}