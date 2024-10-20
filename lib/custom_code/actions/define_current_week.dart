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

CurrentWeekStruct defineCurrentWeek() {
  var ws = weekStart();
  return CurrentWeekStruct.fromMap({
    "Begins": ws,
    "Monday": ws.dayOfWeek(1),
    "Tuesday": ws.dayOfWeek(2),
    "Wednesday": ws.dayOfWeek(3),
    "Thursday": ws.dayOfWeek(4),
    "Friday": ws.dayOfWeek(5),
    "Saturday": ws.dayOfWeek(6),
    "Sunday": ws.dayOfWeek(7),
    "Ends": ws.dayOfWeek(7).endOfDay()
  });
}
