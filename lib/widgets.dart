import 'package:flutter/material.dart';

class InputFeild extends StatelessWidget {
  final String labelText;
  InputFeild(this.labelText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 40, right: 40),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            fillColor: Colors.white),
      ),
    );
  }
}

class LoginText extends StatelessWidget {
  final String text;
  LoginText(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 65),
      width: 200,
      height: 120,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 35),
      ),
    );
  }
}

class LogSignUpText extends StatelessWidget {
  final String logtext;
  LogSignUpText(this.logtext);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 90,
      height: 200,
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            logtext,
            style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
