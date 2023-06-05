import 'package:flutter/material.dart';
import 'datePicker.dart';
import 'drop_down.dart';
import 'gender.dart';
import 'saved.dart';

class ProfileInfo extends StatefulWidget {
  ProfileInfoState createState() => ProfileInfoState();
}

class ProfileInfoState extends State<ProfileInfo> {
  TextEditingController _name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logoo.png"),
                    fit: BoxFit.cover)),
            //Padding(
            //     padding:
            //         EdgeInsets.only(left: 60, right: 60, bottom: 0), //Scaff,old(

            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Padding(
                  // padding: EdgeInsets.only(right: 30, left: 30),
                  // child: Container(
                  //child:
                  // Container(
                  //   //padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //       border:
                  //           Border(bottom: BorderSide(color: Colors.black26))),
                  //child:
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      hintText: "First Name",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                      //border: InputBorder.none),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.black)),
                    ),
                  ),
                  //
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Middle Name",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),

                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color:
                                  Colors.black)), // border: InputBorder.none,
                    ),
                  ),

                  // SizedBox(
                  //   height: 10,
                  // ),
                  //
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.black)),
                      //border: InputBorder.none,
                    ),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Gender",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                    ),
                  ),

                  Gender(),
                  DatePicker(),
                  Dropdown(),
                  //
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Experience in Months",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                      //border: InputBorder.none,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.black)),
                    ),
                  ),
                  //
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Domains worked on",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                      //border: InputBorder.none,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.black)),
                    ),
                  ),

                  //
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Skills",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                      //border: InputBorder.none,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.black)),
                    ),
                  ),
                  //
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Languages Known",
                      hintStyle: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                      //border: InputBorder.none,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.black)),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Saved(),
                        ),
                      );
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ])));
  }
}
