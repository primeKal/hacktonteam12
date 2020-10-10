import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacktonteam12/Dummy/dummycontent.dart';
import 'package:hacktonteam12/Pages/DummyDescriptionPage.dart';
import 'package:hacktonteam12/util/utility.dart';

import 'AddPlantPage.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Dummy> myDummy=Utility.getData();
  List<Widget>  _widgetOptions;

  @override
  Widget build(BuildContext context) {
    //  here make the change to mysql or firebase o get all plants, change myDummy
    getsubpages();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>AddPlantPage()));
          },
          tooltip: 'Increment',
          child: Icon(Icons.add)
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('All'),
            backgroundColor: Colors.white,
            icon:Icon(Icons.add),
          ),
          BottomNavigationBarItem(
              title: Text('Vents'),
              backgroundColor: Colors.white,
              icon:Icon(Icons.add)
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void getsubpages() {
    _widgetOptions= <Widget>[
      Container(
        padding: EdgeInsets.all(4),
        child: ListView(
          children:myDummy.map((e) => PlantCard(e)).toList() ,
        ),
      ),
      Container(
        child: ListView(
          children: myDummy.map((e) => RankingCard(e)).toList(),
        ),
      ),
    ];
  }


  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex=value;
    });
  }


  Card PlantCard(Dummy d) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>DummyPage()));
        },
        child: Column(
          children: [
            Center(
                child:Text(d.name)
            ),
            Row(
              children: [
                Text("Pant Description-"),Text(d.age + d.height)],
            ),
            Row(
              children: [Text(d.owner),Icon(Icons.add)],
            ),
            RaisedButton(
              child: Text("Buy"),
              onPressed: (){
                //go to telegram
              },
            ),  //here we can make the call to individual
          ],
        ),
      ),
    );
  }

  Card RankingCard(Dummy d) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>DummyPage()));
        },
        child: Column(
          children: [
            Center(
                child:Text(d.name)
            ),
            Row(
              children: [
                Text("Pant Description-"),Text(d.age + d.height)],
            ),
            Row(
              children: [Text(d.owner),Icon(Icons.add),Text("RANKING-4")],
            ),
            RaisedButton(
              child: Text("Buy"),
              onPressed: (){
                //go to telegram
              },
            ),  //here we can make the call to individual
          ],
        ),
      ),
    );
  }
}

