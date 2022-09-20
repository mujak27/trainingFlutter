import 'package:flutter/material.dart';
import 'package:training/auth/users.dart';
import 'package:training/components/errorDialog.dart';

const minPassLength = 4;
const minNameLength = 4;
final alphaNumericRegex = RegExp(r'^[a-zA-Z0-9]+$');

int loginValidation(context, String name, String password) {
  var users = User.users;


  if(name.length == 0 || password.length == 0){
    errorDialog(context, "username and password must be filled");
    return 0;
  }

  if(name.length < minNameLength){
    errorDialog(context, "username length must at least $minNameLength");
    return 0;
  }

  if(!alphaNumericRegex.hasMatch(name)){
    errorDialog(context, "username must not contain any special character!");
    return 0;
  }

  var check = 0;
  for (var user in users) {
    if(user.name == name && user.password == password){
      check = user.id;
    }
  }
  
  if (check == 0) {
    errorDialog(context, "name or password doesn't match");
    return 0;
  }
  return check;
}


bool commentValidation(context, String text){
  if(text == "") {
    errorDialog(context, "comment must be filled");
    return false;
  }
  return true;
}