import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_login/components/custom_text_form_field.dart';
import 'package:my_flutter_login/size.dart';

import '../components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: xlarge_gap,
            ),
            Logo(title: "Login"),
            CustomTextFormField(text: "Email"),
            SizedBox(
              height: small_gap,
            ),
            CustomTextFormField(text: "Password"),
            SizedBox(
              height: large_gap,
            ),
            //0xDD00000
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black87),
                      )
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Login"),
                ),
            ),

          ], //1
        ),
      ),
    );
  }
}
