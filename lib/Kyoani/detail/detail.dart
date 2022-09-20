import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/Anime.dart';
import 'package:training/Kyoani/detail/AnimePage.dart';
import 'package:training/Kyoani/detail/Comment/Comment.dart';
import 'package:training/Kyoani/detail/Comment/commentPage.dart';
import 'package:training/Kyoani/post.dart';
import 'package:training/auth/users.dart';
import 'package:training/auth/validation.dart';
import 'package:training/components/nav.dart';

class DetailPage extends StatelessWidget {
  int userId;
  Anime anime;
  List<Comment> comments = [];
  DetailPage({super.key, required this.userId, required this.anime});

  

  @override
  Widget build(BuildContext context) {

    var user = getUserById(userId);

    List<Tab> myTabs = <Tab>[
      Tab(text: anime.title),
      const Tab(text: 'Comments'),
    ];

    void addComment(String text){
      if(!commentValidation(context, text)) return;
      comments.add(Comment(
        id: comments.length+1, 
        userId: userId, 
        text: text
      ));
    }


    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: [
            AnimePage(anime: anime, comments: comments, addComment: addComment,),
            CommentPage(comments: comments),
          ]
        ),
        bottomNavigationBar: Nav(name : user.name,context: context,),
      ),
    );
  }
}