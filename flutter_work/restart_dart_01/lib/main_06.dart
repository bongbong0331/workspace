
/// Lexical scope
/// Dart 에서 중첩 함수 방식으로 함수안에 함수를 선언할 수 있다

void main(){
  var insideMain = true;

  void myFunction(){
    var inSideFunction = true;
    print(insideMain);

    void nestedFunction(){
    print('nested ${inSideFunction}');
    }
  }

  myFunction();
}