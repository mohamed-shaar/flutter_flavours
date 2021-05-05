import 'package:flutter/cupertino.dart';
import 'package:flutter_flavours/app_config.dart';
import 'package:flutter_flavours/main_common.dart';
import 'package:flutter_flavours/resource/display_strings_app2.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: 'App_2',
    appInternalID: 2,
    stringResource: StringResourceApp2(),
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}
