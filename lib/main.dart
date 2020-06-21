import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scheduler/scheduler.dart';

import 'app_defaults.dart' as AppDefaults;
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Scheduler.createAndroidChannel("my.pill.reminder", "Pill Reminder", 4);

    return MaterialApp(
      title: 'Pill Reminder',
      theme: ThemeData(
        primarySwatch: AppDefaults.getPrimarySwatchColor(),
        canvasColor: AppDefaults.getCanvasColor(),
        dialogBackgroundColor: AppDefaults.getDialogBackgroundColor(),
        cardColor: AppDefaults.getCardColor(),
        primaryIconTheme: IconThemeData(color: AppDefaults.getIconColor()),
        primaryTextTheme: TextTheme(
            title: TextStyle(color: AppDefaults.getPrimaryTextColor())),
        textTheme: TextTheme(
          body1: TextStyle(
              color: AppDefaults.getPrimaryTextColor(),
              fontSize: AppDefaults.getPrimaryFontSize()),
          caption: TextStyle(
            color: AppDefaults.getPrimaryTextColor(),
          ),
          subhead: TextStyle(
              color: AppDefaults.getPrimaryTextColor(),
              fontSize: AppDefaults.getPrimaryFontSize()),
        ),
        dialogTheme: DialogTheme(
            titleTextStyle: TextStyle(
                color: AppDefaults.getPrimarySwatchColor(),
                fontSize: AppDefaults.getPrimaryFontSize())),
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppDefaults.getPrimarySwatchColor())),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppDefaults.getPrimarySwatchColor()))),
        cupertinoOverrideTheme: CupertinoThemeData(textTheme: CupertinoTextThemeData(dateTimePickerTextStyle:TextStyle(
            color: AppDefaults.getPrimaryTextColor(),
            fontSize: AppDefaults.getSecondaryFontSize())))
      ),
      home: HomePage(title: 'Pill Reminder'),
    );
  }
}
