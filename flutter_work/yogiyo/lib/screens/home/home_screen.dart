import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 1,
            ),
          ],
        ),
        actions: [
          Icon(CupertinoIcons.bell),
          InkWell(onTap: () {}, child: Text("주소")),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.chevron_down),
          ),
        ],
      ),
      body: ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
    );
  }


}
