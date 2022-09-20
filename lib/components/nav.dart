import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/detail/detail.dart';
import 'package:training/Kyoani/items.dart';
import 'package:training/Kyoani/post.dart';
import 'package:training/auth/login.dart';
import 'package:training/auth/users.dart';

class Nav extends StatelessWidget {
  String name;
  BuildContext context;
  final Function()? switchTheme;

  Nav({
    super.key,
    required this.name,
    required this.context,
    this.switchTheme
  });


  @override
  Widget build(BuildContext context) {


    return BottomNavigationBar(
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.filter_drama),
          label: 'Film',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: name,
        ),
      ],
      currentIndex: 1,
      selectedItemColor: Colors.grey,
      onTap: (int num)=>{
        if(num == 1) {
          if(switchTheme != null){
            switchTheme!()
          }
        }else if(num == 2){
          // Navigator.push(context, MaterialPageRoute(builder: (context){
          //   return LoginPage();
          // }))
          Navigator.pushAndRemoveUntil(
            context,   
            MaterialPageRoute(builder: (BuildContext context) => LoginPage()), 
            ModalRoute.withName('/')
          )
        }
      },
    );
  }
}