
// 동기 방식에 프로그램 진행
import 'package:restart_dart_02/main_01.dart';

void main() async {

  //일반적인 프로그램 흐름 방식
  addNum(10, 10);
  print("--------------------");

  addNum(20, 20);

}


void addNum(int n1, int n2){
  print("계산중 : $n1 + $n2");
  print("계산완료 : ${n1 + n2}");
  print(" 함수 실행 완료");

  //
}