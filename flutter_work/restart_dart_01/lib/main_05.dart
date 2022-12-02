
///  클로져 !!!!!!!!!!!!!!!!!!!!!!!
///  1급객체 조건을 만족한다 !
///  익명 함수 개념을 알아야 한다 !
///  클로져 개념 !!!!
/// Lexical closure
void main(){ // 이 괄호 안에서 ....

  var add2 = makeAdder(2);
  var add4 = makeAdder(4);
  assert(add2(3) == 5); // print 보다 많이쓸텐데, 값이다르면 오류남~

  print(add2(10)); // 변수가 살아있다 ....

  print(add4(0));
}


 Function makeAdder(int addBy){
  // Function 없어도 되지만 가독성 ( dynamic 만 된다 )
  return (int i) => addBy + i;
}