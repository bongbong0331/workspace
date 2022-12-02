
void main() {
  // 미래타입 함수는 비동기 방식이기 때문에 무조건 Future 타입으로 받아야 한다.
  // 실행 시키는 스택에서 동기방식으로 코드를 진행 했다면 먼저 값을 확인할 수 없다 .
  // 그냥 Future 타입 이라고만 확인 된다.

  var result = testCode();

  print(result.runtimeType);
  print(result.then((value) => print("value : $value")));

  // print(addMyNum(10, 10).then((value) => print(value)));

}

Future<String> testCode() async{

  print("start");
  // 서버 데이터를 요청하고 2초뒤 받았다
  var _futureValue = await Future(() {
    for(int i=0; i < 3; i++){
      print("---> i : $i");
    }
    return "i 연산완료";
  });

  print("end");
  return _futureValue;
}

Future addMyNum(int n1, int n2) async{


  return n1 + n2;
}

