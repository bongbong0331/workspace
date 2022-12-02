// main 쪽에서 넘겨받은 userDto toString 출력

// 문제 2 > 리스트 샘플 만들어서 처리해보기

// 1단계 UserDto 많이 생성해서 던지기

// 2단계 메인 함수에서 전부 출력

// 3단계 map , where 활용해서 뽑아보세요.


void main (){

    futureDogOne().then((dogOne) => print(dogOne.toString()));


  }



  class MyDog{
    String name;
    int age;

    MyDog(this.name, this.age);

    @override
    String toString() {
      return 'MyDog{name: $name, age: $age}';
    }

  }

  Future<MyDog> futureDogOne(){
    Future<MyDog> dogOne = Future.delayed(Duration(seconds: 3), () => MyDog('코커', 7) );
    print(dogOne.runtimeType);

    return dogOne;
  }

