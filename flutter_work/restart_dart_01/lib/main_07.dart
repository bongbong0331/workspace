/// 함수형 프로그래밍
///  다트 컬렉션 ( stream )


// 기본기 - 형변환
void main(){
  List<String> game = ['스타크래프트', '롤', '망나뇽', '앵그리버드', '롤', '롤'];

  print(game);
  print(game.asMap());   //  Map으로 데이터타입 형변환 ㄷ
  print(game.toSet());    //  Set으로 형변환 (중복값 사라짐)

  print('-------------------------------');
  Map myLikeGame = game.asMap();
  print(myLikeGame);

  print('-------------------------------');
  Set myGame2 = game.toSet();
  Set myGame3 = Set.from(game); // 똑같은것
  print(myGame2);
  print(myGame3);

  // Set --> list
  print(myGame3.toList());   // 리스트로 형변환

}