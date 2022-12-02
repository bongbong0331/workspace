import 'package:flutter/material.dart';
import 'package:naver_webtoon/pages/best_header_popular_item.dart';
import 'package:naver_webtoon/pages/best_header_popular_text.dart';

import '../best_components/size.dart';



class BestHeaderPopular extends StatelessWidget {
  const BestHeaderPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPopularItemList(),
        ],
      ),
    );
  }// end build

  Widget _buildPopularItemList(){
    return Wrap(
      children: [
        BestHeaderPopularItem(id: 0),
        SizedBox(width: 30,),
        BestHeaderPopularItem(id: 1),
        SizedBox(width: 30,),
        BestHeaderPopularItem(id: 2),
        SizedBox(width: 30,),
      ],
    );
  }
}

