import 'package:flutter/material.dart';
import 'package:hacktonteam12/Pages/SplashScreen.dart';
import 'package:hacktonteam12/util/utility.dart';

import 'Dummy/dummycontent.dart';
import 'Pages/AddPlantPage.dart';
import 'Pages/MyHomePage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
