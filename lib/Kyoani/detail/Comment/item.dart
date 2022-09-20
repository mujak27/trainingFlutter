import 'dart:html';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/Anime.dart';
import 'package:training/Kyoani/detail/Comment/Comment.dart';
import 'package:training/Kyoani/post.dart';
import 'package:training/auth/users.dart';

final List<Tab> myTabs = <Tab>[
  const Tab(text: 'Detail'),
  const Tab(text: 'Comments'),
];

class CommentItem extends StatelessWidget {
  Comment comment;
  CommentItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {

    var user = getUserById(comment.userId);


    return Column(children: [
      Text("${user.name} : ${comment.text}"),
    ]
    );
  }
}