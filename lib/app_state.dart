import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();
   
  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    // _prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  CurrentWeekStruct _thisCurrentWeek = defineCurrentWeek(DateTime.now());
  CurrentWeekStruct get thisCurrentWeek => _thisCurrentWeek;
  set thisCurrentWeek(CurrentWeekStruct value) {
    _thisCurrentWeek = value;
  }

  CurrentWeekStruct _currentWeek = defineCurrentWeek(DateTime.now());
  CurrentWeekStruct get currentWeek => _currentWeek;
  set currentWeek(CurrentWeekStruct value) {
    _currentWeek = value;
  }

  void updateThisCurrentWeekStruct(Function(CurrentWeekStruct) updateFn) {
    updateFn(_thisCurrentWeek);
  }

  DateTime? _currentDayMenu;
  DateTime? get currentDayMenu => _currentDayMenu;
  set currentDayMenu(DateTime? value) {
    _currentDayMenu = value;
  }
}
