import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29,62,83, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Welcome Back!', style: TextStyle(fontSize: 30.0)),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ShowUpAnimation(
                  curve: Curves.easeIn,
                  direction: Direction.vertical,
                  delayStart: Duration(milliseconds: 800),
                  animationDuration: Duration(milliseconds: 1000),
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(71,109,124,0.8),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0), topRight: Radius.circular(100.0))
                    ),
                  ),
                ),
                ShowUpAnimation(
                  curve: Curves.easeIn,
                  direction: Direction.vertical,
                  delayStart: Duration(milliseconds: 400),
                  animationDuration: Duration(milliseconds:1500),
                  child: Container(
                    height: 550,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(71,109,124,0.6),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0), topRight: Radius.circular(100.0))
                    ),
                  ),
                ),
                ShowUpAnimation(
                  curve: Curves.easeIn,
                  direction: Direction.vertical,
                  animationDuration: Duration(milliseconds: 2000),
                  child: Container(
                    height: 600,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(71,109,124,0.4),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0), topRight: Radius.circular(100.0))
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
