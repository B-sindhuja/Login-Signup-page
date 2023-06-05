import 'package:flutter/material.dart';

enum Choices { Male, Female }

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => GenderState();
}

class GenderState extends State<Gender> {
  Choices? _character = Choices.Male;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: const Text('Male'),
          leading: Radio<Choices>(
            activeColor: Colors.black,
            value: Choices.Male,
            groupValue: _character,
            onChanged: (Choices? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio<Choices>(
            activeColor: Colors.black,
            value: Choices.Female,
            groupValue: _character,
            onChanged: (Choices? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
