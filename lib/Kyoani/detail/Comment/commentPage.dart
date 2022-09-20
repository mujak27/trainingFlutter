import 'dart:html';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:training/Kyoani/Anime.dart';
import 'package:training/Kyoani/detail/Comment/Comment.dart';
import 'package:training/Kyoani/detail/Comment/item.dart';
import 'package:training/Kyoani/post.dart';

final List<Tab> myTabs = <Tab>[
  const Tab(text: 'Detail'),
  const Tab(text: 'Comments'),
];

class CommentPage extends StatelessWidget {
  List<Comment> comments = [];
  CommentPage({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Column(children: 
      comments.map((comment) {
        return CommentItem(comment: comment);
      }).toList()
    );
  }
}