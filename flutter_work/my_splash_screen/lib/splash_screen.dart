import 'package:flutter/material.dart';
import 'package:my_splash_screen/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)  {
        return MainScreen();
      }));
    });

    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(16.0),
            // color: Color(0xFFFFFF),  //hex code - 0x: 16 진수
            color: Color.fromRGBO(255, 255, 255, 1),
            child: AspectRatio(  // 가득
                aspectRatio: 9 / 16,
                child: Image.asset(
                  "assets/splash.png",
                  fit: BoxFit.fill,   //꽉채워라
                ),
            ),
          ),
        ),
        Flexible(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
        ),
      ],
    );
  }
}
