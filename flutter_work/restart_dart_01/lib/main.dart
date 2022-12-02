/// enum 크로스플랫폼에는 소문자 ! 
/// 재료같은놈

enum Status{
  ready,
  start,
  end
}

void main(){

  // 데이터 범주와 타입처럼 사용,
  // 개발자에게 코드의 가독성을 높여주고
  // 안정적인 프로그래밍 방식의 하나 !!!
  Status myStatus = Status.ready;
  if(myStatus == Status.ready){
    print('준비중입니다.');
  }else if(myStatus == Status.start){
    print("시작했습니다");
  }else if(myStatus == Status.end){
    print("종료되었습니다.");
  }
  
  switch(myStatus){
    case Status.ready:
      print("준비중입니다");
      break;
    case Status.start:
      print("시작했습니다.");
      break;
    case Status.end:
      print("종료됐습니다");
      break;
    default:
      print("3개다 없으면 컷");
  }
}