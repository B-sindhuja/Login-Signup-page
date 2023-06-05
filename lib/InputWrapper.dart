import 'package:flutter/material.dart';
import 'signUp.dart';
import 'InputField.dart';
import 'nav.dart';

class InputWrapper extends StatelessWidget {
  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     //throw 'couldnt launch';
  //   }
  // }

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Text(
              //   'Don\' t have an account?',
              //   style: TextStyle(
              //       color: Colors.black87,
              //       fontSize: 15,
              //       fontWeight: FontWeight.bold),
              // ),
              Container(
                  //height: 40,
                  //margin: EdgeInsets.symmetric(horizontal: 75
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Nav(),
                    ),
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    //backgroundColor: Colors.black,
                    backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
