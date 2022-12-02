
import 'package:flutter/material.dart';
import 'package:my_profile_tab/components/profile_buttons.dart';
import 'package:my_profile_tab/components/profile_count_info.dart';
import 'package:my_profile_tab/components/profile_drawer.dart';
import 'package:my_profile_tab/components/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildProfileAppBar(),
      endDrawer: ProfileDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          ProfileHeader(),
          const SizedBox(height: 30,),
          ProfileCountInfo(),
          const SizedBox(height: 30,),
          ProfileButtons(),
          const SizedBox(height: 30,),
          Expanded(child: Profile)
        ],
      ),
    );
  }
}


AppBar _buildProfileAppBar(){
  return AppBar(
    leading: Icon(Icons.arrow_back_ios),
    title: Text("만덕", style: TextStyle(color: Colors.black),),
    centerTitle: true,
  )
}