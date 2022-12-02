import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);   // 상수 빼줘야함~

  WebViewController? mController;
  var homeUrl = "https://www.youtube.com/";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        title: const Text("Tencoding"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if(mController == null){
                return;
              }
              mController!.loadUrl(homeUrl);
            },
            icon: Icon(Icons.home, color: Colors.black,),
          ),
        ],
      ),
      body: SafeArea(
        // 겹치지 않게
        child: WebView(
          // controller => 위젯들을 프로그램적으로 조정할 수 있는 기능을 제공해 주는 녀석
          // controller 를 받으면
          onPageStarted: (url){
            print("url: $url");
          },
          onWebViewCreated: (controller) {
            this.mController = controller;
          },

          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
