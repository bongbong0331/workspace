// asynchronous /어싱크로너스 (비동기)

// async 랑 wait 는 비동기를 동기화처럼 쓰는것 ! ! !
void main() async {

  // 미래 타입 사용
  // Future - 미래에 받아올 값
  Future<String>name = Future.value("텐코딩");
  Future<int> number = Future.value(10);
  Future<bool> isTrue = Future.value(true);

  // 비동기는 논리적으로 막아서 처리한다.

  // --------------------------------------

  addNum(10, 10);
  print("----");
  addNum(20, 20);



  await addNumbers(10, 10);
  print("----");
  await addNumbers(20, 20);

  // print("result1 : ${result1}");
  // print("result2 : ${result2}");
  // print("result3 : ${result1 + result2}");



  // 비동기 방식의 흐름을 동기 방식으로 만드는 방법
  //1. 함수 선언부와 구현부(바디) 사이에 async 를 넣어 주어야 한다.
  //2. await 를 같이 써야 한다.

// print('문제1 - - - - - -  - - -');
//   print('문제1');
//
//   exNum(10, 10, 10);
// print('문제1 끝 - - - -');


}


// 10 + 10
// 20+ 20

void addNum(int n1, int n2) async {
  print("계산중 : $n1 + $n2");
  
  // 서버 데이터를 요청했다 .
  await Future.delayed(Duration(seconds: 3), () {
    print("계산 완료 : ${n1 + n2}");
  },);
  

  print("함수실행완료");

}


// 문제1 . 비동기 방식 함수 만들어 보기 및 사용 - 단 리턴은 void로 처리해주세요


// void exNum(int e1, int e2, int e3) async{
//   print('문제1.1 - - -  - - - - - - -');
//   print("계산한다 : $e1 + $e2 - $e3 " );
//
//   await Future.delayed(Duration(seconds: 4), (){
//     print('문제1.2 - - - - - -  - - ');
//     print("계산다함 : ${e1 + e2 - e3}");
//   });
//
//
//
//   print("끝");
// }



// 2 비동기 방식의 함수에 리턴 타입은 무조건 미래타입 이어야 한다 !!

Future<int> addNumbers(int n1, int n2)async {
  print('******************* ');
  print('${n1 + n2}');
  await Future.delayed(const Duration(seconds: 2), () => n1 + n2);


  print('******************* ');

  return n1 + n2;
}