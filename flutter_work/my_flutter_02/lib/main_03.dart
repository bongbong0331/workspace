

///변수
///명시적 타입, 타입 추론



// 코드의 시작점
void main() {
  var name = 'Voyager I';
  var year = 1997;
  var diameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', '홍길동']; //리스트
  var image = {
    'tags' : ['홍길동', '티모'],
    'url' : 'path/to/juppiter.png'
  }; //웹계열

  print(image);
  print(image['tags']);
  print(image['tags'].runtimeType);

  print(name.runtimeType);
  print(year.runtimeType);
  List<String> tagList = image['tags'] as List<String>;
  tagList[0];
  print(tagList[0]);
  print(tagList[1]);
  Map images = {};   // {} = Map 계열  --> []

}
