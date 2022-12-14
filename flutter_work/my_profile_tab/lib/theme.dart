import 'package:flutter/material.dart';

//함수 만들기
//  AccentColor 앱의 상호작용 요소에 사용하는 색입니다.
// SecondaryColor 라고도 부른다.

ThemeData theme() {
  return ThemeData(
      primaryColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.redAccent),
      )
  )
}