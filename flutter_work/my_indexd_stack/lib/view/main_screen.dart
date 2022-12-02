import 'package:flutter/material.dart';
import 'package:my_indexd_stack/view/home_screen.dart';
import 'package:my_indexd_stack/view/my_profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          MyProfile(),
          //3,
          //4,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( // 최대 다섯개 !!!!
        backgroundColor: Colors.red,
        selectedItemColor: Colors.purple,   //누른놈 버튼색
        unselectedItemColor: Colors.tealAccent, // 안누른놈 색깔
        currentIndex: _selectedIndex,   //  버튼 눌렀을때 색깔
        onTap: (index) {
          setState( (){
            _selectedIndex = index;
          } );

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: "my"),
        ],
      ),
    );
  }


}
