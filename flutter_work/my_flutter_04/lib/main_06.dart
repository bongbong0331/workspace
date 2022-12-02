void main(){

  String name1 = "홍길동";
  String name2 = "이순신";
  print(name1 + name2);
  // - , * , / 마이너스, 곱하기, 나누기 는 할수 없다 . !
  print('${name1} ${name2}');
  print('$name1 $name2');
  print('${name1.runtimeType} $name2.runtimeType');

  var myVar = '1';
  // myVar = 100; var는 한번정해지면 안댐.

  dynamic yourData = '11';
  yourData = 100;
  // dynamic은 다시 변경 가능

  //nullable - null이 될 수 있다.
  //non-nullable - null이 될 수 없다.
  //null - 아무런 값도 없다 .

  String name = '텐코딩';
  // name = null; //불가능

  String? name3 = '홍길동';
  // 타입을 지정할수도 있고 null도 사용가능하다 .
  name3 = null;
  print(name3);
  // print(name3!); // 여기 값은 반드시 null이 아니야 의 의미

  //상수 const - final

  DateTime now1 = DateTime.now();
  print(now1);
  DateTime now2 = DateTime.now();
  print(now2);
  print('-----------------');
  final DateTime now3 = DateTime.now();
  print(now3);


  // const = 컴파일 타임에 값을 받아야 하는데
  // DateTime.now는 실행 시점에 실행 되기 때문에
  // 여기서는 사용이 안됨.
  // const DateTime now4 = DateTime.now();
  // print(now4);






}