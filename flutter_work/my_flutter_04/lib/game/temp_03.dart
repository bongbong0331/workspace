

void main(){
  // Dart 상속 -> 다형성

  CheeseBurger cheeseBurger = CheeseBurger('통새우');
  print(cheeseBurger.name);
  // ( : ) 이니셜 라이져 키워드
  // 이니셜 라이져 키워드는 생성자의 내부 스택이 실행되기 전에 다른 무언가를 호출하고 싶을 때 사용합니다.
}




class Burger{
  String? name;
  Burger(this.name){

  }
}


class CheeseBurger extends Burger{
  // super 키워드는 자식이 부모 객체를 참조할 수 있는 키워드 입니다 . !
  CheeseBurger(name) : super(name);
}