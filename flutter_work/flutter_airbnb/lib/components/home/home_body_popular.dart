import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  } // end build

  Widget _buildPopularTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "북한평양 숙소에 직접 다녀간 리밍밍의 후기",
          style: h5(),
        ),
        Text(
          "리밍밍 후기 2,500,000개 이상, 평균 평점 5.0",
          style: body1(),
        ),
        const SizedBox(
          height: gap_m,
        ),
      ],
    );
  }


  Widget _buildPopularList(){
    return Wrap(   // 자동으로 안에 자식들을 떨어뜨려준다
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7,),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7,),
        HomeBodyPopularItem(id: 2),
        SizedBox(width: 7,),
      ],
    );
  }
} // end class
