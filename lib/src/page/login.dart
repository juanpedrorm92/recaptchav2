import 'package:captcha/src/page/captcha.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   
  static String routeName = 'login';
    
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("hola Mundo"),
            onPressed:(){
              print(_contador);
              if((_contador++)>=3){
                Navigator.pushReplacementNamed(context, MyHomePage.routeName);
                _contador = 0;
              }
            }
          ),
        )
      );
  }
}