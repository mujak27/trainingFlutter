import 'dart:html';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/Anime.dart';
import 'package:training/Kyoani/detail/Comment/Comment.dart';
import 'package:training/Kyoani/post.dart';

final List<Tab> myTabs = <Tab>[
  const Tab(text: 'Detail'),
  const Tab(text: 'Comments'),
];

class AnimePage extends StatelessWidget {
  Anime anime;
  List<Comment> comments = [];
  TextEditingController commentController  = TextEditingController();
  final Function(String) addComment;

  AnimePage({super.key, required this.anime, required this.comments, required this.addComment});

  void onSubmitComment()=>{
    addComment(commentController.text),
    commentController.text = ""
  };

  @override
  Widget build(BuildContext context) {
    return
        Column(children: [
          Title(color: Colors.black, child: Text(anime.title)),
          Image.asset(
            p.join("..", anime.image),
            width: 150.0,
          ),
          TextField(
            controller: commentController,
            decoration: const InputDecoration(
              hintText: "insert comment"
            ),
          ),
          ElevatedButton(
            onPressed: onSubmitComment, 
            child: Text("submit")
          ),
        ]);
  }
}