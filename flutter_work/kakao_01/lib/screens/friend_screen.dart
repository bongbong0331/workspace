import 'package:flutter/material.dart';
import 'package:kakao_01/components/profile_card.dart';
import 'package:kakao_01/models/User.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("친구"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ProfileCard(user: me),
          const Divider(), // 선
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Text("친구"),
                const SizedBox(
                  width: 6,
                ),
                Text("${friends.length}"),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                friends.length,
                (index) => ProfileCard(user: friends[index]), // 스트림의 맵 처럼 반환한다
              ),
            ),
          ),
        ],
      ),
    );
  }
}
