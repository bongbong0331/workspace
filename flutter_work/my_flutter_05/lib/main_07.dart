import 'dart:isolate';

/// Dart isolate & ReceivePort
/// 일반적인 프로그래밍은 순차적으로 작업을 처리한다. 즉 하나의 작업을 요청한 후
/// 그 작업이 끝나면 다음 작업으로 넘어간다.
/// 이런 경우 처리시간이 긴 작업 (특히 ui와 관련된 상황)을 만나면
/// 사용자는 프로그램이 멈춘것 처럼 느낄 수 있다.
/// 이러한 문제는 비동기 프로그래밍( Asynchronous programming ) 으로 해결할 수 있다.
/// 비동기 프로그래밍은 용청한 작업의 결괄르 기다리지 않고 바로 다음 작업으로 넘어감으로써 프로그램의 실행을 멈추지 않는다.

/// 비동기는 동시성 ( Concurrency ) 이나 병렬( Parallel ) 은 비교 군이 될 수 없는 다른 개념이다.
/// Dart 에서는 future, stream API 를 통하여 자체적으로 비동기 프로그래밍을 지원한다 !
/// 그 전에 isolate 라는 Dart 의 독특한 구조부터 알아야 한다.


/// isolate - 격리하다는 의미.
/// isolate 는 Dart 의 모든 코드가 실행되는 공간이다. 싱글 스레드를 가지고 있고 이벤트 루프를 통하여 작업을 처리한다.
/// 기본 isolate 인 main isolate 는 런타임에 생성 된다 .

void main(){

  print("........................main isolate ..................................");
  // 새로운 Isolate 생성하기 : spawn 함수를 사용하면 된다.
  // Dart는 일급객체를 지원하는 언어입니다. 매개변수로 함수를 전달할 수 있다.
  Isolate.spawn(doNewJobIsolate, '1번 너가 할일 청소'); // 10분 걸리면 다른 놈들은 기다렷다해야하는ㄷ ㅔ그게아님
  Isolate.spawn(doNewJobIsolate, '2번 너는 잠자기');
  Isolate.spawn(doNewJobIsolate, '3번 너는 집에가기');

}// end of main

doNewJobIsolate(var taskContent){
  print(">>> $taskContent <<<");
}