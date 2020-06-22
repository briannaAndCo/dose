import 'package:flutter/material.dart';
import 'package:dose/settings/alarm_setting.dart';
import 'package:dose/settings/mini_pill_setting.dart';
import 'package:dose/settings/package_weeks_setting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/settings_model.dart';
import '../app_defaults.dart' as AppDefaults;
import 'placebo_days_setting.dart';
import 'settings_constants.dart' as SettingsConstants;

class SettingsPage extends StatelessWidget {
  SettingsPage({Key key, this.settingsModel}) : super(key: key);

  final SettingsModel settingsModel;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Settings"),
        ),
        body: settingsModel.pillPackageWeeks == null
            ? Container()
            : _buildSettingsView(),
      );

  Widget _buildSettingsView() => ListView(
        children: <Widget>[
          PackageWeeksSetting(
            settingsModel: settingsModel,
          ),
          PlaceboDaysSetting(
            settingsModel: settingsModel,
          ),
          MiniPillSetting(
            settingsModel: settingsModel,
          ),
          AlarmSetting(
            settingsModel: settingsModel,
          )
        ],
      );
}
