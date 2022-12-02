
//오류를 찾아보시오~

void main() async{

  // Future<T> : 미래에 받아 올 값
  // 동기 프로그램에서는 함수 요청 --> 결과가 나올 때 까지 멈춰 있다.
  // 비동기 방식인 Future 타입은 기다리지 않고 다른 실행을 처리할 때 사용한다!

  // Future<String> fData = Future.value("홍길동");
  // print(fData);
  // String name = vmServer(1); // 안됨!! 미래 타입으로 받아야 한다 !

    // Future<String> name = vmServer(2); // 1초뒤에 값이 담김 ( 이벤트루프에 담아놓고 우선 다른놈부터 시작됨 )

    // name.then((value) => print(value));    //여기로 들어옴   (우선 주석)

    // name.then((value) { // 람다는 한줄바께안대서 이걸루함  (이것도 우선주석 티모나와야함..)
    //   String data = "<<<<<<" +value + ">>>>>>";
    //   print(data);
    // });

    // String customResult = await name.then((value) => value).toString(); // 함수에 async 잇어야 await 가 됩니다
    // String temp = "$customResult, 100";
    // print(temp);
    // 홍길동, 100

  String result = await vmServer(1).then((value) => value).toString();
    print("$result : 100");
    print("메인함수 종료");
    // 여기서 연산이 필요한 동작이라면
    // 1. 쉬운방법은 then 안에서 처리하면 된다.


}





  // 가상서버라고 가정 해본다
Future<String> vmServer(int id) async{ // 명시해도 되고 안해도 됨 할거면 Future<String>
  // var _fServerData;
  // if (id == 1){
  //   _fServerData = await Future.delayed(const Duration(seconds: 2), () => "홍길동");
  // }else{
  //   _fServerData = await Future.delayed(const Duration(seconds: 2), () => "티모");
  // }

  // var _fServerData = Future.delayed(const Duration(seconds: 2), () => "홍길동");
  // Future<String> -- > 안에 홍길동이 들어가있다.
  print("서버실행");
  return await Future.delayed(const Duration(seconds: 2), () => "홍길동");
}