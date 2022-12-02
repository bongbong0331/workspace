

void main(){

  //Set 사용해보기 (집합 리터럴을 사용하는 간단한 set)
  var computerParts = {'mouse', 'keyboard', 'speaker', 'monitor'};
  print(computerParts);

  // for(var i = 0; i < computerParts.length; i++){
  //   computerParts[i]; 안됨

  for(var parts in computerParts){
    print(parts);
  }

  //반복자를 사용하는 방법
  Iterator iterator = computerParts.iterator;
  while(iterator.moveNext()){
    print("::${iterator.current}");
  }

  Set setInter = Set<int>();

  setInter.add(1);
  setInter.add(2);
  setInter.add(3);

  print(setInter);

  setInter.remove(1);
  print("------------------------------");
  print(setInter);
  setInter.remove(10);
  print(setInter);

  // 얕은 복사 !
  var elements = computerParts;
  print(elements);
  elements.add('abc');
  print(computerParts);


  Set elements2 = Set();
  //addAll >> 깊은 복사가 된다 !!
  elements2.addAll(computerParts);
  print(elements2);
  elements2.add('이거들어가냐?');
  print('------------------------');
  print(computerParts);


//문제
// computerParts 이용해서
// 반복자 사용하여
// while 사용하고 그 요소중에 touchpad 가 있으면
// 화면에 touchpad가 존재합니다 . 글자를 찍고 더이상 반복 돌지 마시오.
print('--------------------');
// Iterator munze = computerParts.iterator;
//
// Set munzeset = Set();
// munzeset.add(computerParts);
// munzeset.add('touchpad');
//
// while(munze.moveNext()){
//   if(munze.current == 'touchpad'){
//     print('있다');
//   }else{
//     print('없다');
//   }
// }
// print(munzeset);

Iterator iterator2 = computerParts.iterator;
while(iterator2.moveNext()){
  var hasTouchPad = iterator2.current == 'touchpad' ? true : false;
  if(hasTouchPad){
    print('touchpad 가 존재합니다. ');
    // return;
    break;
  }
}
print('---------------------------------------');

  var constantSet = const {
    'a',
    'b',
    'c',
    // 'c',
    'd'
  };
    // constantSet.add('c');
    print(constantSet);

  }