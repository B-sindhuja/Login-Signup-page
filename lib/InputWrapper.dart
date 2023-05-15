import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'couldnt launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, top: 5, right: 60, bottom: 0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            // decoration: BoxDecoration(
            //     color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\' t have an account?',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                child: Text(
                  "Register here",
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  //_launchURL('flutter.dev');
                },
              )
            ],
          ),
          // SizedBox(
          //   height: 18,
          // ),
        ],
      ),
    );
  }
}
