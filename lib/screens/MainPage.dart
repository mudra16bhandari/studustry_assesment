import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 62, 83, 1),
      body: Center(
          child: Text("You're In!!", style: TextStyle(fontSize: 40.0, color: Colors.white),),
      ),
    );
  }
}
