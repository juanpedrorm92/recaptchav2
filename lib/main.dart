// @dart=2.9
import 'package:captcha/src/page/captcha.dart';
import 'package:captcha/src/page/home.dart';
import 'package:captcha/src/page/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recaptcha_v2/flutter_recaptcha_v2.dart';
 
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //initialRoute: LoginPage.routeName,
      home: LoginPage(),
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        MyHomePage.routeName:(BuildContext context) => MyHomePage(),
      },
    );
  }
}

