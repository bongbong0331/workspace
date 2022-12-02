import 'package:flutter/material.dart';
class BottomNavi extends StatelessWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSelectorButton(1, Icons.home, "홈"),
            _buildSelectorButton(1, Icons.menu_open_outlined, "전체메뉴"),
            _buildSelectorButton(1, Icons.control_point_sharp, "매장찾기"),
            _buildSelectorButton(1, Icons.tips_and_updates, "상품권"),
            _buildSelectorButton(1, Icons.event_available, "이벤트"),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectorButton(int id, IconData mIcon, String name) {
    return Container(
      width: 70,
      height: 70,
      child: Column(
        children: [
          IconButton(
            onPressed: () {},

            icon: Icon(mIcon, color: Colors.black87,),),
          Text(name),
        ],
      ),
    );
  }
}