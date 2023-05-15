import 'package:flutter/material.dart';
import 'navigationScreen.dart';
import 'navigator.dart';

class InputField extends StatefulWidget {
  InputFieldState createState() => InputFieldState();
}

class InputFieldState extends State<InputField> {
  TextEditingController _name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black26))),
          child: TextField(
            controller: _name,
            decoration: InputDecoration(
                hintText: "Username",
                hintStyle:
                    TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
                prefixIcon: Icon(Icons.person, color: Colors.black),
                border: InputBorder.none),
          ),
        ),
        Container(
          //padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black26),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "password",
              hintStyle:
                  TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.lock, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 75),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}
