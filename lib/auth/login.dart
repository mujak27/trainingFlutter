import 'package:passwordfield/passwordfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/home.dart';
import 'package:training/Kyoani/links.dart' as links;
import 'package:training/auth/validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
enum EnumTheme {
  dark,
  light
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  late int userId;

  void handleLogin()=>{
    userId = loginValidation(context, usernameController.text, passwordController.text),
    if(userId != 0){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HomePage(userId: userId);
      }))
    }
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children:  [
              Image.asset(
                "../assets/KyoAniLogo.jpg",
                width: 280.0
              ),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  hintText: "username"
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "password"
                ),
              ),
              ElevatedButton(
                onPressed: ()=>{handleLogin()}, 
                child: const Text("login")
              )
            ],
          ),
        ),
      )
    );
  }
}