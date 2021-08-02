import 'package:flutter/material.dart';
import 'package:flutter_recaptcha_v2/flutter_recaptcha_v2.dart';

class MyHomePage extends StatefulWidget {
  
  static String routeName = 'captcha';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

  String verifyResult = "";
class _MyHomePageState extends State<MyHomePage> {

  RecaptchaV2Controller recaptchaV2Controller = RecaptchaV2Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOLA MUNDO"),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("SHOW ReCAPTCHA"),
                  onPressed: () {
                    recaptchaV2Controller.show();
                  },
                ),
                Text(verifyResult),
              ],
            ),
          ),
          RecaptchaV2(
            apiKey: "6LcsgM4bAAAAAJ2iGFLJUDqiBjtdmNtUmh3U1-iZ",
            apiSecret: "6LcsgM4bAAAAABp24DiYOOA5TbDeKI5cA4xm6yhn",
            controller: recaptchaV2Controller,
            onVerifiedError: (err){
              print(err);
            },
            onVerifiedSuccessfully: (success) {
              setState(() {
                if (success) {
                  //verifyResult = "You've been verified successfully.";
                  Navigator.pushReplacementNamed(context, '/');
                } else {
                  verifyResult = "Failed to verify.";
                }
              });
            },
          ),
        ],
      ),
    );
  }
}