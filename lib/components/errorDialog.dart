import 'package:flutter/material.dart';

void errorDialog(context, String text){
  
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}