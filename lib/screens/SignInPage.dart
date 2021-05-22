import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_studustry/screens/MainPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:show_up_animation/show_up_animation.dart';

import 'SignUpPage.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 62, 83, 1),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  ShowUpAnimation(
                    curve: Curves.easeIn,
                    direction: Direction.vertical,
                    animationDuration: Duration(milliseconds: 2000),
                    child: Container(
                      height: 675,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(71, 109, 124, 0.4),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100.0),
                              bottomRight: Radius.circular(100.0))),
                    ),
                  ),
                  ShowUpAnimation(
                    curve: Curves.easeIn,
                    direction: Direction.vertical,
                    delayStart: Duration(milliseconds: 400),
                    animationDuration: Duration(milliseconds: 1500),
                    child: Container(
                      height: 650,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(71, 109, 124, 0.6),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100.0),
                              bottomRight: Radius.circular(100.0))),
                    ),
                  ),
                  ShowUpAnimation(
                    curve: Curves.easeIn,
                    direction: Direction.vertical,
                    delayStart: Duration(milliseconds: 800),
                    animationDuration: Duration(milliseconds: 1000),
                    child: Container(
                      height: 625,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(71, 109, 124, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100.0),
                              bottomRight: Radius.circular(100.0))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 100.0),
                        child: ShowUpAnimation(
                          delayStart: Duration(milliseconds: 2500),
                          curve: Curves.easeIn,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 75,
                                  child: Image(
                                    image: AssetImage('images/logo1.png'),
                                  ),
                                ),
                                Text(
                                  'Welcome Back!',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 28.0),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                //Email Address
                                TextField(
                                  cursorColor: Colors.white60,
                                  cursorHeight: 22.0,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      labelText: 'Email address',
                                      labelStyle: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white60,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 10.0,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      )),
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),

                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  cursorColor: Colors.white60,
                                  cursorHeight: 22.0,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white60,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10.0,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      )),
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, PageTransition(child: MainPage(), type: PageTransitionType.rightToLeft));
                                  },
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.white70),
                                  ),
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.only(
                                            left: 75.0,
                                            right: 75.0,
                                            top: 15.0,
                                            bottom: 15.0)),
                                    backgroundColor: MaterialStateProperty.all(
                                      Color.fromRGBO(29, 62, 83, 0.5),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0)),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: SignUpPage(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  },
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(0.0)),
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  child: Text(
                                    "Don't have an Account? Sign-up!",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
