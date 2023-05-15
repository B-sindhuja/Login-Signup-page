import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://kinneygroup.com/wp-content/uploads/2019/10/fw-bg-gradient.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            Header(),
            Expanded(
              child: Container(
                child: InputWrapper(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
