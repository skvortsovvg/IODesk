// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

Future setNotificationOnDateTime(DateTime selectedTime) async {
  
  print(selectedTime);

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  
  var initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  
  var initializationSettingsIOS = DarwinInitializationSettings();
  
  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  const androidNotificationDetails = AndroidNotificationDetails(
      'IO1', 'dinners_notification',
      channelDescription: 'Напоминалка про обеды',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker');
  var iOSPlatformChannelSpecifics = DarwinNotificationDetails();
  var platformChannelSpecifics = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iOSPlatformChannelSpecifics);

  configureLocalTimeZone();
  
  if (selectedTime.isBefore(DateTime.now())) {
      selectedTime = selectedTime.add(const Duration(days: 7));
    }
    final tz.TZDateTime scheduledTime =
        tz.TZDateTime.from(selectedTime, tz.local);

    print(scheduledTime);
    
    try {
      await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        "Запись в столовую",
        "Доступно расписание на следующую неделю, не забудьте записаться!",
        scheduledTime,
        platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
        androidScheduleMode: AndroidScheduleMode.alarmClock
      );

      debugPrint('Notification scheduled successfully');
    } catch (e) {
      debugPrint('Error scheduling notification: $e');
    }

}

Future<void> configureLocalTimeZone() async {
  if (kIsWeb || Platform.isLinux) {
    return;
  }
  tz.initializeTimeZones();
  // final String? timeZoneName = await FlutterTimezone.getLocalTimezone();
  final timeZoneName = "Europe/Kyiv";
  tz.setLocalLocation(tz.getLocation(timeZoneName!));
}