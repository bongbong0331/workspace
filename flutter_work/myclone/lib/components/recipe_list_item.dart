import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem({Key? key, required this.imageName, required this.title}) : super(key: key);

  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/$imageName.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(title, style: TextStyle(fontSize: 20),),
          Text("$title가 먹고싶을땐 만덕오리마을 $title" , style: TextStyle(color: Colors.grey, fontSize: 12),),
        ],
      ),
    );
  }
}
