import 'package:flutter/material.dart';
import 'package:flutter_flavours/app_config.dart';
import 'package:flutter_flavours/resource/display_strings.dart';
import 'package:intl/intl.dart';

void mainCommon() {

}

/*void main() {
  runApp(MyApp());
}*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return MaterialApp(
      title: config.appDisplayName,
      theme: ThemeData(
        primaryColor: Color(0xFF43a047),
        accentColor: Color(0xFFffcc00),
        // primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flavours Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }

  Widget _buildBody(String appName, StringResource stringResource, int appInternalId) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Text(appName),
          Text(DATE + getDateForDisplay()),
          Text(stringResource.APP_DESCRIPTION),
          Image.asset('assets/dancing.png', width: 50.0, height: 50.0,),
          Image.asset('assets/' + appInternalId.toString() + '/icon.png', width: 50.0, height: 50.0,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config.appDisplayName),
      ),
      body: _buildBody(config.appDisplayName, config.stringResource, config.appInternalID),
    );
  }
}
