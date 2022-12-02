import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "토종닭"),
        _buidLine(),
        _buildInfo("10", "만덕"),
        _buidLine(),
        _buildInfo("오세요", "오리마을"),
      ],
    );
  }
  
  Widget _buildInfo(String count, String title){
    return Column(
      children: [
        Text(count, style: TextStyle(fontSize: 15),),
        const SizedBox(height: 2,),
        Text(title, style: TextStyle(fontSize: 15),),
      ],
    );
  }

  Widget _buidLine(){
    return Container(
      width: 2,
      height: 60,
      color: Colors.redAccent,
    );
  }




}// end class
