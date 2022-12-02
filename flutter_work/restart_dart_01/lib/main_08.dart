/// 컬렉션 안에 있는 Stream 과 함수형 프로그래밍의 이해 , 활용 . . .
/// List 와 Stream !!!


void main(){


  List<String> game = ['스타크래프트', '롤', '망나뇽', '앵그리버드', '롤', '롤'];

  final newGame = game.map((e) => '2022 - $e');
  print(newGame);
  // 컬렉션을 사용할 때 불필요한 for 문, if 문을 줄여서 가독성을 높일 수 있고,
  // stream 의 map 함수는 데이터를 원하는대로 변형 할 때 활용할 수 있다.
  // 데이터를 변환할 때 사용한다



  final newGame2 = game.map((e) {
    return '블리자드 $e';
  });
  // 괄호는 반복자 타입이다. (형변환을 편하게 할수있는 타입)
  print(newGame2);
  // 리스트 타입
  print(newGame2.toList());
  // 셋 타입
  print(newGame2.toSet());


  String number = '123456';
  final parsed = number.split('').map((e) => '$e.jpg').toList();
  print(parsed);


  List<String> fcb = ['알베스', '푸욜', '피케', '부스케츠', '사비', '이니에스타', '메시'];
  final newfcb = fcb.map((e) => '바셀올스타 -$e ' );
  print(newfcb);
}