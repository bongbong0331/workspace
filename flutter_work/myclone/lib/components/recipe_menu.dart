import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, 'ALL'),
          const SizedBox(
            width: 25,
          ),
          _buildMenuItem(Icons.food_bank, '오리'),
          const SizedBox(
            width: 25,
          ),
          _buildMenuItem(Icons.food_bank, '닭'),
          const SizedBox(
            width: 25,
          ),
          _buildMenuItem(Icons.food_bank, '흑염소'),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }



  Widget _buildMenuItem(IconData mIcon, String text){
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          const SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }


}// end of class
