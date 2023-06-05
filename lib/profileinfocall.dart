import 'package:flutter/material.dart';
import 'profileInfo.dart';

class ProfileInfoCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 60, bottom: 0),
      child: ProfileInfo(),
    );
  }
}
