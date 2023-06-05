import 'package:flutter/material.dart';

class SignupPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 180),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
