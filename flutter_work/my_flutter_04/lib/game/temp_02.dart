

import '../main_08.dart';

void main(){


  Person person = Person();
  // person.setName = '홍길동';  // 즉 접근 할때도 name이름으로 사용된다.
  person.setName = null;
  print(person.getName);
}