
///Dart 에서는 4가지 기본타입을 제공합니다. (Object)
/// 정수 <int>, 실수<double>, 문자열<String>, 논리<bool>
/// Numbers(int, double)
/// String
/// bool
/// null

/// List
/// Set
/// Map
/// 변수에 넣을 수 있는 모든 것은 객체이고 모든 객체는 클래스의 인스턴스 입니다.
/// null을 제외하고 모든 객체는 Object 클래스에서 상속 됩니다.

/// Dart 에서의 형 변환

void main(){
  // String --> int
  var intTen = int.parse('10');
  print(intTen);
  print(intTen.runtimeType);

  // String --> double
  var onPointOne = double.parse('1.1');
  print(onPointOne);
  print(onPointOne.runtimeType);

  // int --> String
  String oneAsString = 1.toString();
  print(oneAsString);
  print(oneAsString.runtimeType);

  assert(oneAsString == '1'); // assert 런타임 오류 날수도있을때 바로 멈춰줌
  print("여기코드 실행 될까요?");

  // double --> String
  // String piAsString = 3.1415927.toString();
  String piAsString = 3.1415927.toStringAsFixed(2);   // 소숫점 잘라줌.
  print(piAsString);
  
  // String --> bool
  String str1 = 'TRUE';
  bool isOk = str1.toLowerCase() == 'true';    //bool 로 형변환
  print(isOk);
  print(isOk.runtimeType);

  // bool --> String
  bool isEmpty = true;
  String str2 = isEmpty.toString();
  print(str2);
  print(str2.runtimeType);

}// 메인 끝