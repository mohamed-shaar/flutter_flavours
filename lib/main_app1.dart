import 'package:flutter/cupertino.dart';
import 'package:flutter_flavours/app_config.dart';
import 'package:flutter_flavours/main_common.dart';
import 'package:flutter_flavours/resource/display_strings_app1.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: 'App_1',
    appInternalID: 1,
    stringResource: StringResourceApp1(),
    child: MyApp()
  );

  mainCommon();
  
  runApp(configuredApp);
}
