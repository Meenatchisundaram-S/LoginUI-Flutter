import 'package:flutter/material.dart';
import 'package:flutter_app_example/constant.dart';
import 'package:flutter_app_example/login_screen.dart';

void main(){
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      title: Appname,
      debugShowCheckedModeBanner: false,
    );
  }
}