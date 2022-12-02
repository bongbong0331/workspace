import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      width: double.infinity,
      child: Shimmer.fromColors(
        child: Center(
          child: Text("연습중 . . . .",
          style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
          ),
        ),
        baseColor: Colors.blueAccent,
        highlightColor: Colors.purple,
      ),
    );
  }
}
