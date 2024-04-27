import 'package:flutter/material.dart';
import 'Screen/BottomBar/Home.dart';
import 'Screen/LoginPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyApp createState() {
//     return _MyApp();
//   }
// }
//
// class _MyApp extends State<MyApp> {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:LoginPage(),
//     );
//     }
//   }
