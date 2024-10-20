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
