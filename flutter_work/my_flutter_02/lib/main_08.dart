
//논리 연산자 = true / false
void main(){

  // 부정
  print("!true = ${!true}");

  // && ||
  // 그리고 (&&)
  print("true && false = ${true && false}");

  // 또는 (||)
  print("true || false = ${true || false}");

  // 조건문
  int point = 90;
  if(point >= 90){
    print('A학점');
  }else if(point >= 80){
    print('B학점');
  }else{
    print('C학점');
  }

  // 삼항 연산자
  // 조건식 ? (참이면 실행) : (거짓이면 실행)
  int level = 5;
  print(level >= 10 ? "용사" : "시밍");

  // null 대체 연산자
  // 변수의 값이 null 이면 ?? 뒤의 값이 출력이 되고, null이 아니면 변수의 값이 출력 됩니다.
  String? username = null;    // 2.0버전 이후부터는 null을 못씀 !  ?을 뒤에 써야함.!
  print(username);
  print(username ?? "이순신"); // null 대체 연산자
  var srt2 = username ?? "이순신";
  print(srt2);






  ///Ex Ex Ex
  ///* Short Circuit
  //
  // 논리 곱(&&)은 두 항의 결과가 모두 true 일 때만 결과가 true
  //
  // -- 앞의 항의 결과가 false 이면 뒤 항의 결과를 평가하지 않음
  //
  // 논리 합(||)은 두 항의 결과가 모두 false일 때만 결과가 false
  //
  // -- 앞의 항의 결과가 true이면 뒤 항의 결과를 평가하지 않음

  var n1 = 5;
  var n2 = 10;

  print('${(n1 > 4) && (n2 < 9)}');
  print('${(n1 > 4) || (n2 < 9)}');


String? shesname = null;
print(shesname);
print(shesname?? '밍밍');


}