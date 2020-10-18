import 'dart:async';

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
            Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Welcome',
                    style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.bold),
                  ),
                  Text('Loading',
                    style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(child: img)
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
               builder: (BuildContext context)=> MyHomePage(title: 'A Hackton Fest')
           )));
  }

}
