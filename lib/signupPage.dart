import 'package:flutter/material.dart';
import 'profileInfo.dart';

class SignupPage extends StatefulWidget {
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  TextEditingController _name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, top: 5, right: 60, bottom: 0),
      child: Column(
        children: <Widget>[
          // Container(
          //   //padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     border: Border(bottom: BorderSide(color: Colors.black26)),
          //   ),
          //   child:
          TextField(
            controller: _name,
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle:
                  TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              prefixIcon: Icon(Icons.person, color: Colors.black),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black)),
            ),
          ),

          //padding: EdgeInsets.all(10),
          // decoration: BoxDecoration(
          //   border: Border(
          //     bottom: BorderSide(color: Colors.black26),
          //   ),
          // ),
          TextField(
            decoration: InputDecoration(
              hintText: "password",
              hintStyle:
                  TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              // border: InputBorder.none,
              prefixIcon: Icon(Icons.lock, color: Colors.black),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black)),
            ),
          ),

          //
          TextField(
            decoration: InputDecoration(
              hintText: "confirm password",
              hintStyle:
                  TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              // border: InputBorder.none,
              prefixIcon: Icon(Icons.lock, color: Colors.black),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileInfo(),
                ),
              );
            },
            child: Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ))
        ],
      ),
    );
  }
}
