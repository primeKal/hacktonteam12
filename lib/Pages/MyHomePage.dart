import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacktonteam12/Dummy/dummycontent.dart';
import 'package:hacktonteam12/Pages/DummyDescriptionPage.dart';
import 'package:hacktonteam12/util/Cards.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title,
              style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              children: [
                FlatButton(
                  child: Text('Saved',
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                ),
                Icon(Icons.send)
              ],
            )
          ],
        ),

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
            title: Text('Events'),
            backgroundColor: Colors.white,
            icon:Icon(Icons.add),
          ),
          BottomNavigationBarItem(
              title: Text('Location'),
              backgroundColor: Colors.white,
              icon:Icon(Icons.add)
          ),
          BottomNavigationBarItem(
              title: Text('Me'),
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
          children:myDummy.map((e) => PlantCard(context: context, d: e)).toList() ,
        ),
      ),
      Container(
        child: ListView(
          children: myDummy.map((e) => RankingCard(context: context, d: e)).toList(),
        ),
      ),
    ];
  }


  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex=value;
    });
  }


}
