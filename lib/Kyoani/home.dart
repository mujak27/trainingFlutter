import 'dart:ui';
import 'package:path/path.dart' as p;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/Anime.dart';
import 'package:training/Kyoani/detail/detail.dart';
import 'package:training/Kyoani/items.dart';
import 'package:training/Kyoani/post.dart';
import 'package:training/auth/users.dart';
import 'package:training/components/nav.dart';

class HomePage extends StatefulWidget {
  int userId;
  HomePage({super.key, required this.userId});
  var isLightTheme = true;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void switchTheme(){
    setState(() {
      widget.isLightTheme = !widget.isLightTheme;
    });
  }

  Color getColor(bool? reversed){
    if(reversed!){
      if(widget.isLightTheme) return Colors.black;
      return Colors.white;
    }
    
    if(widget.isLightTheme) return Colors.white;
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    var animes = Anime.Animes;
    var user = getUserById(widget.userId);
    return Scaffold(
      backgroundColor: getColor(false),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: Container(
          child: Column(
            children: [
              Text("hello ${user.name}"),
              CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: animes.map((anime) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(p.join("..", anime.image), width: 100.0,),
                      );
                    },
                  );
                }).toList(),
              ),
              Text(
                "Kyoto animation gallery",
                style: TextStyle(color: getColor(true)),
              ),
              Text(
                "This app is created to view some works of Kyoto Animation",
                style: TextStyle(color: getColor(true)),
  ),
              ElevatedButton(onPressed: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ItemPage(userId: widget.userId);
                }))
              }, child: const Text("see works"))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Nav(name: user.name, context: context, switchTheme: switchTheme),
    );
  }
}