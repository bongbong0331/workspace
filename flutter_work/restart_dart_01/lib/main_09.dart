/// 컬렉션 Map과 Stream 의 활용

void main(){


  Map<String, String> games = {
    '블리자드' : '스타크래프트',
    '라이엇' : '롤',
    '펍지' : '배그',
  };

    var result = games.map((k, v) => MapEntry('moblie! $k', '신작! $v'));
    print(result);
    print(games);

    final keys = games.keys.map((e) => 'boot $e').toList();
    final values = games.values.map((e) => 'like $e').toList();
    print(keys);
    print(values);


}