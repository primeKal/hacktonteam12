import 'package:flutter/material.dart';
import 'package:hacktonteam12/Pages/MyHomePage.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<bool> checksomedata() async{
    Future.delayed(Duration(milliseconds: 5000), (){});
    return true;
  }
  void navigatehome(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context)=> MyHomePage(title: 'A Hackton Fest')
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Color(0xff7f00ff),
          highlightColor: Color(0xffe100ff),
          child: Column(
            children: [
              Text('Welcome',
              style: TextStyle(fontSize: 20),
              ),
              Text('Loading',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    checksomedata().then((value) => (value){
      if(value){
        navigatehome();
      }
    });
  }

}
