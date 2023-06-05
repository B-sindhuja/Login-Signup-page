import 'package:flutter/material.dart';
import 'signupPage.dart';
import 'signupPageHeader.dart';

class SignUp extends StatelessWidget {
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
        child: Column(
          children: [
            SignupPageHeader(),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SignupPage(),
            ),
          ],
        ),
      ),
    );
  }
}
