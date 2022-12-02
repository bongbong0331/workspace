
// 비동기 기본 틀
void main() {

  // Future 는 내부적으로 상태값을 가진다.
  // 1. 미완료 (Uncompleted)
  // 2. 완료 (Completed)
  // 2-1. data : 정상적으로 작업을 수행, 결과까지 넘겨 받고 완료된 상태
  // 2-2. error : 작업중에 문제 발생 시 error 를 반환 후 완료

  useFutureType().then((value) => null, onError: (error) => {print('잘못된 요청')});

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