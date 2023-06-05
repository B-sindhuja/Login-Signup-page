import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://kinneygroup.com/wp-content/uploads/2019/10/fw-bg-gradient.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        ));
  }
}

// class MyApp extends StatefulWidget {
//   State<StatefulWidget> createState() {
//     print("inside stateful widget class");
//     return MyAppState();
//   }
// }
//
// class MyAppState extends State<MyApp> {
//   var questionIndex = 0;
//
//   void answerQuestion() {
//     setState(() {
//       questionIndex = questionIndex + 1;
//       print("control reached");
//       print(questionIndex);
//     });
//   }
//
//   Widget build(BuildContext context) {
//     var questions = [
//       'what\'s your fav color',
//       'what is your fav movie',
//       'what is your fav show',
//       'what is your fav sub',
//       'what is your fav place',
//       'what is your fav lang',
//     ];
//     print("inside build");
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My Fiiiirst App'),
//         ),
//         body: Column(
//           children: [
//             Text(questions[questionIndex]),
//             ElevatedButton(
//               child: Text('Answer1'),
//               onPressed: answerQuestion,
//             ),
//             ElevatedButton(
//               child: Text('Answer1'),
//               onPressed: answerQuestion,
//             ),
//             ElevatedButton(
//               child: Text('Answer1'),
//               onPressed: answerQuestion,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
