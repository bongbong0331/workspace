class UserDto {
  String name;
  int age;

  UserDto(this.name, this.age);

  @override
  String toString() {
    return 'UserDto{name: $name, age: $age}';
  }
}

void main (){

  // fetchUserDto().then((userDto) => print(userDto.toString()));

  Future<UserDto> zz = Future(() => UserDto("이순신", 1));
  Future<UserDto> zz2 = Future.value(UserDto("이순신", 1));
  Future<UserDto> fUser1 = Future(() => UserDto("이순신", 1));
  Future<UserDto> fUser2 = Future.value(UserDto('이순신',1));

  print("exexex");

  // fetchUserDto().then((person) => print(person.idol));
  print("----------------------------------------------------");
  final blackPink = personDto().idol.where((e) => e['group'] == '블랙핑크').toList();
  print(blackPink);
  print("----------------------------------------------------");
  final newJeans = personDto().idol.where((e) => e['group'] == '뉴진스').toSet();
  print(newJeans);
  print("----------------------------------------------------");
  final bts = personDto().idol.where((e) => e['group'] == 'BTS').toList();
  print(bts);
  print("----------------------------------------------------");

  Future<personDto> fetchUserDto() {
    Future<personDto> person = Future.value(personDto());
    return person;
  }

}

  Future<UserDto> fetchUserDto () {
    Future<UserDto> userDto = Future.delayed(Duration(seconds: 3), () => UserDto('홍길동', 100));
    print(userDto.runtimeType);
    return userDto;
}



// 문제 미래타입 함수 선언

// UserDto 를 생성해서 (값 셋팅) 3초뒤에 리턴하는 함수를 만들어 주세요.!

// main 쪽에서 넘겨받은 userDto toString 출력

// 문제 2 > 리스트 샘플 만들어서 처리해보기

// 1단계 UserDto 많이 생성해서 던지기

// 2단계 메인 함수에서 전부 출력

// 3단계 map , where 활용해서 뽑아보세요.

// 문제 2 --> 리스트 샘플 만들어서 처리해보기
// 1단계 UserDto 많이 생성해서 던지세요
// 2단계 메인 함수에서 전부 출력
// 3단계 where 활용해서 뽑아보세요


class personDto {
  List<Map<String, String>> idol = [
    {'name ': '제니', 'group': '블랙핑크'},
    {'name ': '로제', 'group': '블랙핑크'},
    {'name ': '리사', 'group': '블랙핑크'},
    {'name ': '지수', 'group': '블랙핑크'},
    {'name ': '뷔', 'group': 'BTS'},
    {'name ': 'RM', 'group': 'BTS'},
    {'name ': '정국', 'group': 'BTS'},
    {'name ': '슈가', 'group': 'BTS'},
    {'name ': '제이홉', 'group': 'BTS'},
    {'name ': '민지', 'group': '뉴진스'},
    {'name ': '혜린', 'group': '뉴진스'},
  ];
}
