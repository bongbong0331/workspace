/// Dart 함수 와 매개변수 ( optional, named )


void main(){

  addNumbers(1, 1);

  bool isEven = isEvenNumber(addNumbers2(20, 400)) ;
  print(isEven == true ? "짝수네요" : "홀수네요");


  /// 함수 사용과 매개변수
  /// 1. 매개변수(positional parameter) 포지션 파라미터
  /// 2. optional parameter (옵셔널 파라미터) -> 있어도 되고, 없어도 된다. !
  /// 2 - 1. optional parameter 는 기본값을 정해줄 수 있고, required 를 설정할 수 있다.
  /// 2 - 2. optional parameter 는 required 를 주게되면 named 파라미터로 변경된다 !!!!!
  /// 2 - 3. optional parameter 에 기본값을 주게되면 역시나 named 파라미터를 쓸 수 있다.!

  print(addNumber3(100, 200));

  /// 3. 람다 표현식 (화살표 함수)
  /// 코드를 한줄로 표현하고 싶다면 사용한다. return 키워드 생략이 가능하다 .!!
  
  // named parameter : 매개변수에 이름이 있고 -> 순서가 크게 중요하지 않다 !!

  print(addNumber4(n1: 100,n3: 100, n2: 100));


  print(addNumber5(n1: 100, n3: 200));


  print(addNumber6(n1: 100, n2: 202020));



} // end main




/// 함수를 선언할 때 무엇을 할지 정의하고 만들어야 한다 !!!
/// 주석을해서 무엇을 만들지 설계하고 만들자


// 1 : 두개의 숫자를 받아 더하고 짝수인지 홀수인지 알려주는 함수를 만들어 보자 (하나의 목적이 좋음)
addNumbers(var n1, var n2){
  int sum = n1 + n2;
  if(sum % 2 == 0){
    print("짝수");
  }else{
    print("홀수");
  }
}

  // 두개의 매개 변수를 받아 덧셈하는 기능
  addNumbers2(var n1, var n2){
    return n1 + n2;
  }

  // 옵셔널 파라미터를 사용하기 - 두개의 매개변수를 받아 덧셈하는 기능
  // required 를 쓰면 꼭넣어야함 = 0 못씀!! 
  // = 0 쓰면 안써도됨

  addNumber3(var n1, var n2, {var n3 = 0}){
    return n1 + n2 + n3;
  }
  
  // named parameter 임다
  addNumber4({ required var n1, required var n2, required var n3}){
    return n1 + n2 + n3;
  }

  addNumber5({ var n1 = 0 , var n2 = 0, var n3 = 0}){      // = 0 해도됨 널값때문에
    //방어적 코드 해도된다고요
    return n1 + n2 + n3;
  }

  
  //람다식 addNumber5랑 똑같음 거의 한줄이면 됨!
  addNumber6({ var n1 = 0 , var n2 = 0, var n3 = 0}) => n1 + n2 + n3;    




  // 정수값을 받아 짝수인지 홀수인지 true, false 를 반환하는 기능!
  isEvenNumber(var number){
    return(number % 2) == 0 ? true : false;
  }

