import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        _buildHeaderAvatar(),
        SizedBox(width: 20,),
        _buildHeaderProfile(),
      ],
      // 동그란 이미지
      // 이름 - profile
    );
  }

  //CircleAvatar 이미지를 둥글게 만들어주는 위젯입니다 .!!!
  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    ); // 컨테이너나 사이즈박스
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "부트캠프",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "프로그래머/초특급고수",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "벤츠타는개발자",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    ); // 컨테이너나 사이즈박스
  }
}
