import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:logindesign/sign_up.dart';

import 'widgets.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3F4243),
    ));
    return Scaffold(
      backgroundColor: Color(0xFF3F4243),
      body: Container(
        color: Color(0xFF3F4243),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 90,
                      height: 240,
                      child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    LoginText('A Word of Possiblity in an app'),
                  ],
                )
              ],
            ),
            InputFeild('Name'),
            Container(
              margin: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.white)),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                margin: EdgeInsets.only(left: 170),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 120.0,
              height: 50.0,
              margin: EdgeInsets.only(left: 170),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      child: Center(
                          child: Text(
                    'Ok',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: <Widget>[
                    Text(
                      'You Frist Time?',
                      style: TextStyle(fontSize: 15, color: Colors.white70),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
