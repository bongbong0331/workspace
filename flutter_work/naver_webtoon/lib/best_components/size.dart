import 'package:flutter/material.dart';


// 간격 미리지정
const double gap_5 = 5;
const double gap_10 = 10;
const double gap_15 = 15;
const double gap_20 = 20;
const double gap_25 = 25;
const double gap_30 = 30;


// mediaquery 클래스로 화면사이즈를 받을수 있다
double getBodyWidth(BuildContext context){
  return MediaQuery.of(context).size.width * 0.8;
}
