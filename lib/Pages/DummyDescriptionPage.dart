import 'package:flutter/material.dart';
class DummyPage extends StatefulWidget {
  @override
  _DummyPageState createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Center(
        child: Column(
          children: [Text('Hello'),Text('his is where the descritpion goes')],
        ),
      ),
    );
  }
}
