
void main(){

  // do-while
  var input = 0;
  var sum = 0;
  do{
    input++;
    sum += input;
    if(input >= 10){
      input = 0;
    }
    print("sum : ${sum}");
  }while(input != 0);


  // break문 사용하기
  for(var i = 0; i < 10; i++){
    if(i == 7){
      break;
    }
    print("i : ${i}");
  }

  print("-=-=-==-=--=-=-=-==-==--==--=-==--=-==-");
// continue 사용하기
  for(var i = 0; i < 10; i++){
    if(i == 7){
      continue;
    }
    print("i : ${i}");
  }

// Switch and Case
var command = 'OPEN';
  switch(command){
    case 'CLOSE' :
  broadcast("영업종료 ...");
  break;
    case 'OPEN':
      broadcast("영업중...");
  break;

    default:
      broadcast("준비중...");
  } // end of switch

} // end of main


// dart 는 클래스안에 없을수도 있음
void broadcast(str){
  print("**$str**");
}