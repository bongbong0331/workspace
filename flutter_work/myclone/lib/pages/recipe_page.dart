import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myclone/components/recipe_list_item.dart';
import 'package:myclone/components/recipe_menu.dart';

import '../components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeTitle(),
                RecipeMenu(),
                RecipeListItem(imageName: 'duck', title: '오리고기'),
                RecipeListItem(imageName: 'rooster', title: '닭고기'),
                RecipeListItem(imageName: 'goat', title: '흑염소고기'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(CupertinoIcons.search, color: Colors.black),
        SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
} // end of reciperpage

///AppBar 위젯은 현재화면에 title, leading, action 영역을 포함하고 잇는 막대모양의 위젯입니다.
