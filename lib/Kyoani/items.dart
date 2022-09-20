import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/Anime.dart';
import 'package:training/Kyoani/detail/detail.dart';
import 'package:training/Kyoani/post.dart';
import 'package:training/auth/users.dart';
import 'package:training/components/nav.dart';

class ItemPage extends StatelessWidget {
  int userId;
  ItemPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {

    var user = getUserById(userId);

    var animes = Anime.Animes;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: Container(
          child: Column(
            children: [
              Text('hello $userId'),
              Expanded(
                child: ListView.builder(
                  itemCount: animes.length,
                  itemBuilder: (context, index){
                    return ElevatedButton(
                      onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailPage(anime: animes[index], userId: userId,);
                        }))
                      }, 
                      child: Column(children: [
                        Text(animes[index].title),
                        Image.asset(
                          p.join("..", animes[index].image ),
                          width: 200.0,
                        ),
                      ],)
                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Nav(name: user.name, context: context),
    );
  }
}