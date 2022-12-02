

void main(){

  // fetchData1();
  // fetchData2();
  fetchData3();
  print("메인에서 나는 놀지요--------------------------------------");
}

  fetchData1() async{
  print("start");
  var _data = await Future.delayed(Duration(seconds: 2), () => print("비동기를 동기로"));
  print("end");
  // return _data;
}


fetchData2() {
  print("start2");
  var _data = Future.delayed(Duration(seconds: 2), () => print("비동기를 동기로2"));
  print("end2");
  // return _data;
}

//async 와 await << 기다려 ~ (개한테하듯)
fetchData3() async{
  print("start");
  // 서버에서 데이터를 전달 받을 때 까지 기다릴 거야!!
  var _data = await Future.delayed(Duration(seconds: 2), () => "홍길동");

  print("전달 받은 값 : $_data");
  // return _data;
  
  // 순차적으로 실행되는것을 syncro ... 프로그램
  // future을 쓰면 비동기가 됨 ! 그럼 (async , await 는 동기처럼 보이게 만드는것 인가 ...??)
}