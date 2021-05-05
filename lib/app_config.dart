import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String appDisplayName;
  final int appInternalID;
  final StringResource stringResource;

  AppConfig({this.appDisplayName, this.appInternalID, this.stringResource, Widget child})
      : super(child: child);

  static AppConfig of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppConfig);
    ;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

}

abstract class StringResource {
  String APP_DESCRIPTION;
}
