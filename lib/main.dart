import 'package:flutter/material.dart';
import 'package:training/auth/login.dart';

void main(List<String> args) {
  runApp(const training());
}

class training extends StatelessWidget {
  const training({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Kyoto animation Gallery",
      home: LoginPage(),
    );
  }
  
}