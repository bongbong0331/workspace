import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];
  final popular = [

  "깔깔데스까~?깔깔데스네~드릉드릉하네;뉘에에에에에에에에에에에에에에에에에에에에에에에에에에에엑뉘에에에에에에에에에에에에에에에에에에에에에에에에에에에엥뉘에에에에에에에에에에에에에에에에에에에에에에에에에에에억",
  "2222222222222222",
  "33333333333333333333333"

  ];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      constraints: BoxConstraints(
        minWidth: 320,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),
    );
  } // end build

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          popular[id],
          style: body1(),
          maxLines: 3, // 글 줄 수
          overflow: TextOverflow.ellipsis, // 글 줄 수에 못미칠때 .....으로 만들기
        ),
        const SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/p1.jpeg"),
            ),
            SizedBox(
              width: gap_s,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "리밍밍동무",
                  style: subtitle1(),
                ),
                Text(
                  " 북한.평양",
                  style: subtitle2(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: gap_l,
        ),
      ],
    );
  }
}
