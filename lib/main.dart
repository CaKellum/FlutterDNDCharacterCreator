import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character Creator',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.yellow[230],
        materialTapTargetSize: MaterialTapTargetSize.padded,
        textSelectionColor: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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



  @override
  Widget build(BuildContext context) {
    Map<bool, Widget> platformScaffold = {
      Platform.isAndroid:AndroidScaffold(context),
      Platform.isIOS:IOSScaffold(context),
      (Platform.isWindows || Platform.isLinux || Platform.isMacOS): WebScaffold(context),
    };

    return platformScaffold[true];
  }

  Widget AndroidScaffold(BuildContext context){
    return Scaffold();
  }

  Widget WebScaffold(BuildContext context){
    return Scaffold();
  }

  Widget IOSScaffold(BuildContext context){
    return Scaffold();
  }

}
