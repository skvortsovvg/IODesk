import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/auth/firebase_auth/auth_util.dart';

Future setData(CurrentWeekStruct week) async {
  
  // Get a reference to the Firestore database
  final firestore = FirebaseFirestore.instance;
  var docFilter;

  // Get a reference to the collection
  final collectionRef = firestore.collection("dinners");

  //cheking MONDAY
  docFilter = await collectionRef
      .where("user", isEqualTo: currentUserReference)
      .where("day", isEqualTo: week.monday)
      .get();

  if (docFilter.docs.isEmpty) {
    // Add a new document to the collection
    await collectionRef.add({
      "day": week.monday,
      "user": currentUserReference,
      "name": currentUserDocument?.name,
      "reserved": false,
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
  }

  //cheking TUESDAY
  docFilter = await collectionRef
      .where("user", isEqualTo: currentUserReference)
      .where("day", isEqualTo: week.tuesday)
      .get();

  if (docFilter.docs.isEmpty) {
    // Add a new document to the collection
    await collectionRef.add({
      "day": week.tuesday,
      "user": currentUserReference,
      "name": currentUserDocument?.name,
      "reserved": false,
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
  }

  //WEDNESDAY
  docFilter = await collectionRef
      .where("user", isEqualTo: currentUserReference)
      .where("day", isEqualTo: week.wednesday)
      .get();

  if (docFilter.docs.isEmpty) {
    // Add a new document to the collection
    await collectionRef.add({
      "day": week.wednesday,
      "user": currentUserReference,
      "name": currentUserDocument?.name,
      "reserved": false,
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
  }

  //THURSDAY
  docFilter = await collectionRef
      .where("user", isEqualTo: currentUserReference)
      .where("day", isEqualTo: week.thursday)
      .get();

  if (docFilter.docs.isEmpty) {
    // Add a new document to the collection
    await collectionRef.add({
      "day": week.thursday,
      "user": currentUserReference,
      "name": currentUserDocument?.name,
      "reserved": false,
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
  }
}

DateTime weekStart() {
  var date = new DateTime.now();
  date = DateTime(date.year, date.month, date.day);
  if (date.weekday == 5 || date.weekday == 6 || date.weekday == 7) {
    return date.subtract(Duration(days: date.weekday - 8));
  } else {
    return date.subtract(Duration(days: date.weekday - 1));
  };
}

DateTime beginOfDay(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

extension DateConvertation on DateTime {
  DateTime beginOfDay() {
    return DateTime(this.year, this.month, this.day);
  }

  DateTime endOfDay() {
    return DateTime(this.year, this.month, this.day, 23, 59, 59);
  }

  DateTime noonOfDay() {
    return DateTime(this.year, this.month, this.day, 12);
  }

  DateTime setHour(int hour) {
    return DateTime(this.year, this.month, this.day, hour);
  }

  DateTime nextFridayNoon() {
    return weekStart().subtract(Duration(days: 5)).noonOfDay();
  }

  DateTime nextDayNoon() {
    return this.subtract(Duration(days: -1)).noonOfDay();
  }

  DateTime previousDayNoon() {
    return this.subtract(Duration(days: 1)).noonOfDay();
  }

  DateTime dayOfWeek(int day) {
    return this.subtract(Duration(days: this.weekday - day)).beginOfDay();
  }
}
