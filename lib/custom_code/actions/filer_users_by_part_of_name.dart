// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<UsersRecord>> filerUsersByPartOfName(
  List<UsersRecord> nList,
  String searchText,
) async {
  // compare 2 string variables and add to list
  String string1 = "Hello";
  String string2 = "World";
  List<String> stringList = [];
  List<UsersRecord> fList = [];

  if (string1 == string2) {
    stringList.add("Strings are equal");
  } else {
    stringList.add("Strings are not equal");
  }

  if (nList == null) {
    List<UsersRecord> nList = [];
  }

  nList.forEach((user) {
    if (user.name.toLowerCase().startsWith(searchText.toLowerCase())) {
      fList.add(user);
    }
  });

  return fList;
}
