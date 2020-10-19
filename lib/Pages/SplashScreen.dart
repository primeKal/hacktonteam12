import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:hacktonteam12/Pages/MyHomePage.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    AssetImage image=AssetImage('assets/logo.jpg');
    Image img= Image(
      image: image,
      height: 400,
      width: 400,
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255,255, 255),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                  Text('Eents 2.0',
                    style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.bold,
                    color: Colors.blue),
                  ),
            Center(
              child: Container(
                height: 400,
                width: 400,
                child: FlareActor('assets/anim.flr',
                fit: BoxFit.contain,
                animation: 'landing',),
              ),
            ),
            Text('Loading',
              style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ],
        )
      ),
    );
  }

  @override
  void initState() {
    super.initState();
   Timer(Duration(seconds: 4),
           ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
               builder: (BuildContext context)=> MyHomePage(title: 'Events 2.0')
           )));
  }

}
