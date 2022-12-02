

void main(){


  var strs = ['A', "B", 'C'];

  for(var i = 0; i < strs.length; i++){
    print(strs[i]);
  }


  print("-----------------------");
  for(var el in strs){
    print("foreach : ${el}");
  }

  print("-----------------------");

  var coll = [1, 2, 3];
  print("=================");
  coll.forEach(print);
  print("=================");
  coll.forEach((e) { print(e); });


  //문자열을 효율적으로 연결하기 위한 클래스 입니다.
  var message = StringBuffer("Dart is fun");
  for(var i =0; i < 5; i++){
    message.write('!');
  }
  print(message);


  var count = 0;
  var sum = 0;

  // 1 ~ 100;
  while(count < 100){
    count++;
    print("sum : ${sum += count}");
  }


}