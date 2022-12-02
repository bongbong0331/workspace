
// 비동기 기본 틀
void main() {
  print("start");

  Future futureDelay = sleepDuration(2);
  futureDelay.then((value) => print("작업완료됨"));

  print("end");

  useFutureType().then((value) => print(value));

  print('-----ex');

  Future exFuture = sleepDuration(1);
  exFuture.then((value) => print("연습메인"));
  print('ex end----');

  exFutureType().then((value) => print(value));
}

Future sleepDuration(var s){
  return Future.delayed(Duration(seconds: s));
}

// 데이터도 넘겨 보자

Future<String> useFutureType(){
  var _mFuture = Future.delayed(Duration(seconds: 2), () => "홍길동");
  // var _mFuture = Future(() => "수행결과 넘기기");
  return _mFuture;
}


Future<String> exFutureType(){
  var _exFuture = Future.delayed(Duration(seconds: 1), ()=> "연습메서드" );
  return _exFuture;
}