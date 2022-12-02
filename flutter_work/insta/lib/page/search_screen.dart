import 'package:flutter/material.dart';
import 'package:insta/page/search_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSearchFiled(),
          SearchList(),
        ],
      ),
    );
  }

  Widget _buildSearchFiled() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFefefef),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                borderSide: BorderSide.none),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.grey,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: '검색'),
      ),
    );
  }

}
