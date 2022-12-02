

void main(){

  // 3 --> 0011 << 0110
  assert( (3 << 1) == 6);

  //Dart 에서 상수
  //const - 컴파일 시점에서 , final - 런타임 시점에서
  const msPerSecont = 1000;
  const secondsUnitilRetry = 5;
  const msUntilRetry = msPerSecont + secondsUnitilRetry;

  print(msPerSecont);

  final month = 12;
  // month = 11; 상수기 때문에 변경 불가
  final year = 2022;
  // year = 2023; // x
  
  print(year);

  // 초기화 할때 컴파일 시점에 초기화 되느냐 런타임시점 (프로그램 실행시) 초기화 되느냐 ??

  // 문자열 UTF-16 유니코드 사용
  var s1 = '싱글 쿼터즈 사용가능';
  var s2 = "싱글 쿼터즈 사용가능 ".length;
  print(s2);

}


