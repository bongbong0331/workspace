// import 'package:flutter/material.dart';
//
// class ProfileTab extends StatefulWidget {
//   // 인스타처럼 상태가 변해야 할때 스테이트풀~
//   const ProfileTab({Key? key}) : super(key: key);
//
//   @override
//   State<ProfileTab> createState() => _ProfileTabState();
// }
//
// // 1. TabBar : 탭의 가로 행을 표시하는 머터리얼 디자인 위젯 !!
//
// // 2. TabBarView : 현재 선택된 탭에 화면을 표시하는 위젯 이다 !!
// //   -- TabBar 위젯과 TabBarView 위젯의 controller 속성에 TabController 객체를 연결하면
// //       TabBarView 가 선택된 Tab 에 따라 화면을 변경하게 됩니다 !!
//
// // 3. SingleTickerProviderStateMixin > 한개의 애니메이션을 가진 위젯을 정의할 때 사용합니다.
// //    두개 이상의 애니메이션을 가진 위젯을 정의하려면 TickerProviderStateMixin 을 사용해야 합니다. !!
// class _ProfileTabState extends State<ProfileTab>
//     with SingleTickerProviderStateMixin {
//   TabController? _tabController;
//
//   // 메모리에 올라갈 때 딱 한번만 초기화 하는 녀석
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _tabController = new TabController(length: 2, vsync: this); // vsyn
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         _buildTabBar(),
//         Expanded(
//           child: _buildTabBarView(),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildTabBar() {
//     return TabBar(controller: _tabController, tabs: [
//       Tab(
//         icon: Icon(Icons.directions_car),
//       ),
//       Tab(
//         icon: Icon(Icons.directions_transit_sharp),
//       ),
//     ]);
//   }
//
//   Widget _buildTabBarView() {
//     return TabBarView(controller: _tabController, children: [
//       GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10.0,
//           mainAxisSpacing: 10.0,
//         ),
//         itemBuilder: (context, index) {
//           return Image.network(
//               "https://picsum.photos/id/${index + 1}/200/200"); // 개발할때 약속 프로토콜 같은거임 https://picsum.photos/id/1/200/300 < 숫자 바꾸면 사이즈 바뀜
//         },
//         itemCount: 40,
//       ),
//       Container(
//         color: Colors.grey,
//       ),
//       Container(
//         color: Colors.redAccent,
//       ),
//     ]);
//   }
// }


//------------------------------------------------
// 샘거ㅏㅅ

// import 'package:flutter/material.dart';
//
// class ProfileTab extends StatefulWidget {
//   const ProfileTab({Key? key}) : super(key: key);
//
//   @override
//   State<ProfileTab> createState() => _ProfileTabState();
// }
//
// // 1. TabBar : 탭의 가로 행을 표시하는 머터리얼 디자인 위젯
// // 2. TabBarView : 현재 선택된 탭에 화면을 표시하는 위젯 입니다.
// //     - TabBar 위젯과 TabBarView 위젯의 controller 속성에 TabController 객체를
// // 연결하면 TabBarView 가 선택된 Tab에 따라 화면을 변경하게 됩니다.
// // 3. SingleTickerProviderStateMixin 한 개의 애니메이션을 가진 위젯을 정의할 때 사용합니다.
// // 두 개 이상의 애니메이션을 가진 위젯을 정의하려면 TickerProviderStateMixin 을 사용해야 합니다.
// class _ProfileTabState extends State<ProfileTab>
//     with SingleTickerProviderStateMixin {
//   TabController? _tabController;
//
//   // 메모리에 올라갈 때 한번만 초기화 하는 녀셕
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),   // 샘이랑하면서 바꾼것
//       child: Column(
//         children: [
//           _buildTabBar(),
//           Expanded(child: _buildTabBarView()),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTabBar() {
//     return TabBar(controller: _tabController, tabs: [
//       Tab(
//         icon: Icon(Icons.directions_car),
//       ),
//       Tab(
//         icon: Icon(Icons.directions_transit_sharp),
//       ),
//     ]);
//   }
//
//   Widget _buildTabBarView() {
//     return TabBarView(controller: _tabController, children: [
//       GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10.0,
//           mainAxisSpacing: 10.0,
//         ),
//         itemBuilder: (context, index) {
//           return Image.network("https://picsum.photos/id/$%7Bindex + 1}/200/200");
//         },
//         itemCount: 40,
//       ),
//       Container(color: Colors.redAccent),
//     ]);
//   }
// }


// --------------------------밍



import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  // 인스타처럼 상태가 변해야 할때 스테이트풀~
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

// 1. TabBar : 탭의 가로 행을 표시하는 머터리얼 디자인 위젯 !!

// 2. TabBarView : 현재 선택된 탭에 화면을 표시하는 위젯 이다 !!
//   -- TabBar 위젯과 TabBarView 위젯의 controller 속성에 TabController 객체를 연결하면
//       TabBarView 가 선택된 Tab 에 따라 화면을 변경하게 됩니다 !!

// 3. SingleTickerProviderStateMixin > 한개의 애니메이션을 가진 위젯을 정의할 때 사용합니다.
//    두개 이상의 애니메이션을 가진 위젯을 정의하려면 TickerProviderStateMixin 을 사용해야 합니다. !!
class _ProfileTabState extends State<ProfileTab>

    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  // 메모리에 올라갈 때 딱 한번만 초기화 하는 녀석
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this); // vsyn
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildTabBar(),
          Expanded(child: _buildTabBarView()),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: [
      Tab(
        icon: Icon(Icons.directions_car),
      ),
      Tab(
        icon: Icon(Icons.directions_transit_sharp),
      ),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.network( "https://picsum.photos/id/${index + 1}/200/200");
        },
        itemCount: 40,
      ),
      Container(color: Colors.grey),
      Container(color: Colors.redAccent)
    ]);
  }
}