import 'package:newtask8/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:newtask8/screens/splash1.dart';


void main() {
  runApp(const Chat());
}
class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}