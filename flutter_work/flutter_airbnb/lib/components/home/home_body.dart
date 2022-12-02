import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/size.dart';

import 'home_body_banner.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    
    return Align( // center 말고 비슷한놈
      child: SizedBox(
        width: bodyWidth,   // 화면 70 퍼센트 차지하라~~~~~~~~~~~~~~~~~~~~~
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
