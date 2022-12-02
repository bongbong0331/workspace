void main(){
  // Map

  // key : value
  // 키는 중복이 될 수 없다. 값은 중복이 될 수 있다.
  // Dart에서 new 키워드는 선택 사항입니다.
  // Map 중괄호를 사용합니다. { }

  var gifs = {
    'first' : 'part',
    'second' : 'test',
    'fifth' : 'SQLD 자격증'
  };

  var gifs2 = {
    1 : 'part',
    2 : 'test',
    3 : 'SQLD 자격증'
  };

  final gifs3 = const{
    1 : 'part',
    2 : 'test',
    3 : 'SQLD 자격증'
  };


  print(gifs2[1]);
  print(gifs2[2]);
  print(gifs2[3]);
  
  print('11111111111111111111111111111111110');

  print(gifs);
  print(gifs['first']);
  print(gifs['second']);

  print(gifs['lsw']);

  print('a' * 150);

  // gifs3[2] = 'aaaaa';
  print(gifs3);


}