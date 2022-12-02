/// 추상 클래스
/// 일반 클래스에서 implements 키워드로 구현하고 추상 메서드를 오버라이딩 해야한다.

void main() {

  Car aiCar = AICar();
  aiCar.run();



  // Car menu = MenualCar();
  // menu.run();
}

abstract class Car {
  // 1. 일반적으로 new 할 수 없는 녀석.
  // 2. 추상 메서드를 가질 수 있는 녀석 (필수 조건은 아님)

  drive();

  stop();

  void startCar() {
    print('시동을 켭니다.');
  }

  void turnOff() {
    print('시동을 끕니다.');
  }

  run() {
    startCar();
    drive();
    stop();
    turnOff();
  }
}

// 추상 클래스를 사용할 때 -- extends  가능
// 추상 클래스를 사용할 때 -- implements  가능
// 차이점 : extends 상속을 받기 때문에, 추상 메서드만 오버라이드 되는 반면,
// implements 의 경우 기능 구현을 하기 위함으로 모든 메서드가 오버라이드 된다.

class AICar extends Car{

  @override
  drive() {
    print('운전합니다');
  }

  @override
  stop() {
    print('브레이크로 자동 멈춤');
  }

}

// class MenualCar implements Car{
//   @override
//   drive() {
//    print('양발운전을합니다');
//   }
//
//   @override
//   run() {
//     print('이건어떻게될까?');
//   }
//
//   @override
//   void startCar() {
//   print('출발');
//   }
//
//   @override
//   stop() {
//     print('멈춰');
//   }
//
//   @override
//   void turnOff() {
//     print('시동꺼');
//   }
// }

