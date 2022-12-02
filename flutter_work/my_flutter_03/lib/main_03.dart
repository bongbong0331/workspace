

void main(){



  //
  int _num1 = 10;
  var _num2 = 100.0;
  var _str1 = "hello flutter";
  var _isOk = false;
  var _pi = 3.14;

  print("_num1 : ${_num1 is int}");    // num1 이 인트냐 ? 트루 
  // print("_num1 : ${_num1 is String}");    // num1 이 스트링이냐 ? 팔스

  print("_num2 : ${_num2 is double}");
  print("isOk : ${_isOk is bool}");


  print("_str1 : ${_str1 is !bool}");     // ! < 낫 ?

}