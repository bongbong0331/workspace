
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Tap{

  final IconData icon;
  final String text;

  Tap({required this.icon,required this.text});
}

// 샘플 데이터
List<Tap> taps = [
  Tap(icon: FontAwesomeIcons.envelope , text: "메일"),
  Tap(icon: FontAwesomeIcons.calendarDay , text: "캘린더"),
  Tap(icon: FontAwesomeIcons.archive , text: "서랍"),
  Tap(icon: FontAwesomeIcons.gift , text: "선물하기"),
  Tap(icon: FontAwesomeIcons.laugh , text: "이모티콘"),
  Tap(icon: FontAwesomeIcons.shopify , text: "쇼핑하기"),
  Tap(icon: FontAwesomeIcons.tshirt , text: "스타일"),
];