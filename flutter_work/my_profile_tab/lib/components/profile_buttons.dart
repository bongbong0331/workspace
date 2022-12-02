import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFlowButton(),
        _buildCallButton(),
      ],
    );
  }

  Widget _buildFlowButton(){
    return InkWell(
      onTap: (){
        print('flow버튼 클릭됨');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(10)),
        child: Text(
          '위치안내',
          style: TextStyle(color: Colors.white),
        ),
        ),
      );
  }


  Widget _buildCallButton(){
    return InkWell(
      onTap: (){
        print('call 버튼 클릭됨 !! ');
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
        child: Text(
          "전화하기",
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }






}// endclass
