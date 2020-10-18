
import 'package:flutter/material.dart';
import 'package:hacktonteam12/Dummy/dummycontent.dart';
import 'package:hacktonteam12/Pages/DummyDescriptionPage.dart';
class PlantCard extends StatelessWidget {
  const PlantCard({
    Key key,
    @required this.context,
    @required this.d,
  }) : super(key: key);

  final BuildContext context;
  final Dummy d;

  @override
  Widget build(BuildContext context) {
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
}

class RankingCard extends StatelessWidget {
  const RankingCard({
    Key key,
    @required this.context,
    @required this.d,
  }) : super(key: key);

  final BuildContext context;
  final Dummy d;

  @override
  Widget build(BuildContext context) {
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

