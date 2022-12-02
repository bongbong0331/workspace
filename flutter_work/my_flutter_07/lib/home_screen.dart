import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key, required this.mColor}) : super(key: key); // const 지우던지 변수에 final 하던지 req 쓰던지

  final Color mColor;


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Color color;
  // _HomeScreenState(this.color);

  //3번 ! 생성 시 단 한번만 호출 되어진다 !
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 4번 ! 잘 안쓰는데 위젯이 변경이 되었을 때 한번 호출이 되는 놈~
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  // 5번 더티


  //6번 빌드~
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.mColor,    // widget stf 에내장 되어있는놈임 mContext 같은놈
    );
  }

  // 7번 클린


  // 8번 디엑티브 많이 쓰진 않는다
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }


  // 9번 상태값 저장 .? 끌떄 ..? 갑자기 꺼질때 데이터 날라갈때 쓰는거 ?
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}
