import 'package:flutter/material.dart';
import 'bottom_navi.dart';
import 'components/menu_item.dart';


class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bulidBhcAppBar(),
      bottomNavigationBar: BottomNavi(),
      body: ListView(
      children: [
        MenuItems(imageName: "assets/images/ppu.jpg", price:"25000" , title: "뿌링클"),
       Divider(height: 3,),
        MenuItems(imageName: "assets/images/ppu.jpg", price:"25000" , title: "뿌링클"),
    Divider(height: 3,),
        MenuItems(imageName: "assets/images/ppu.jpg", price:"25000" , title: "뿌링클"),
        Divider(height: 3,),
        MenuItems(imageName: "assets/images/ppu.jpg", price:"25000" , title: "뿌링클"),
        Divider(height: 3,),
        MenuItems(imageName: "assets/images/ppu.jpg", price:"25000" , title: "뿌링클"),

      ],

    ),);
  }
}

AppBar _bulidBhcAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 50,
    leading: IconButton(
      icon: Icon(Icons.menu, color: Colors.black87),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black87,
        ),
      )
    ],
    elevation: 0,
  );
}