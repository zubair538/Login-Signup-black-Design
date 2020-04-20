import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'widgets.dart';
class SignUp extends StatelessWidget {
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
                    LogSignUpText('Sign Up'),
                    LoginText('We can start something new'),
                  ],
                )
              ],
            ),
            InputFeild('Name'),
            InputFeild('Email'),
            InputFeild('Password'),
            Container(
              margin: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: Row(
                children: <Widget>[
                  Text('Birth',style: TextStyle(color: Colors.white70)),
                  FlatButton(
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2000, 1, 1),
                            maxTime: DateTime(2022, 12, 31), onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Text(
                        '01 01 1999',style: TextStyle(color: Colors.white70),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 80.0,
              height: 50.0,
              margin: EdgeInsets.only(left: 170),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: <Widget>[
                  Text(
                    'We have meet before?',
                    style: TextStyle(fontSize: 15, color: Colors.white70),
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
