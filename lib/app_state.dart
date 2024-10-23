import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  CurrentWeekStruct _thisCurrentWeek = CurrentWeekStruct();
  CurrentWeekStruct get thisCurrentWeek => _thisCurrentWeek;
  set thisCurrentWeek(CurrentWeekStruct value) {
    _thisCurrentWeek = value;
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
