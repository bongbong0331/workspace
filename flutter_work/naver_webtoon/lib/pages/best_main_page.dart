import 'package:flutter/material.dart';
import 'package:naver_webtoon/pages/best_body.dart';

import 'best_header.dart';
import 'best_header_popular.dart';


class BestMainPage extends StatelessWidget {
  const BestMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: ListView(   // list view???
        children: [
          BestHeader(),
          BestBody(),
        ],
      ),
    );
  }

}
