import 'package:flutter/material.dart';
import 'package:http_ex/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              fetchUser();

            },
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                
                Container(
                  width: 20,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  fetchUser()async{
    var uri = Uri.parse(BASE_URL + "/init/user");
    await http.get(uri).then((res) {
      print(res.statusCode);
      print(res.headers);
      print(res.body);
      print(res.headers.runtimeType);
      print(res.body.runtimeType);
      print("페치분자값-----------");

      Map<String, dynamic> bodyMap = convert.jsonDecode(res.body);

    });
  }
  
  
}
