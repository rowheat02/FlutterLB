import 'dart:async';

import 'package:flutter/material.dart';
import 'package:langurb/Screens/Home_screen.dart' as prefix0;
import 'package:langurb/Screens/Initial_screnn.dart';
import 'package:langurb/Screens/test.dart';
import './Screens//Home_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './Provider_data/providers_data.dart';

Future main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft]);
  SystemChrome.setEnabledSystemUIOverlays([]);

  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // int Balance = (prefs.getInt('Balance') ?? 1000);
  // await prefs.setInt('Balance', Balance);

  runApp(MyApp());

  Timer.periodic(new Duration(seconds: 4), (timer) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Providersdata(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'jos',
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => Initial(),
          '/play': (ctx) => Home_screen(),
          '/test': (ctx) => Test()
        },
      ),
    );
  }
}
