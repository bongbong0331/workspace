import 'package:flutter/material.dart';
import 'package:insta/page/search_image_list.dart';
import 'package:insta/page/search_screen.dart';


class SearchList extends StatelessWidget {
  SearchList({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(searchImageTabs.length, (index) => Row(
                children: [

                ],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}