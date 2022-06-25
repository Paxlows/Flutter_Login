import 'package:flutter/material.dart';
import 'package:login_page/login.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.white),
      home: const Userlogin(),
    );
  }
}
