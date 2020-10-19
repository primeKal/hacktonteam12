
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
    AssetImage image=AssetImage('assets/logo.jpg');
    Image img= Image(
      image: image,
      height: 400,
      width: 400,
    );
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>DummyPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              child: Image.asset('assets/logo.jpg'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Text(d.name ,
                 style: TextStyle(
                   fontSize: 25,
                   ),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Pant Description-"),Text(d.age + d.height)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text(d.owner),Icon(Icons.add)],
                ),
                FlatButton(
                  child: Text("Buy",
                            style: TextStyle(color: Colors.blue),),
                  onPressed: (){
                    //go to telegram
                  },
                ),  //here we can make the call to individual
              ],
            ),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              child: Image.asset('assets/logo.jpg'),
            ),
            Column(
              children: [
                Center(
                    child:Text(d.name,
                            style: TextStyle(
                              fontSize: 25,
                            ),)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Pant Description-"),Text(d.age + d.height,
                          )],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text(d.owner),Icon(Icons.add),Text("RANKING-4")],
                ),
                FlatButton(
                  child: Text("Buy",style: TextStyle(color: Colors.blue),),
                  onPressed: (){
                    //go to telegram
                  },
                ),  //here we can make the call to individual
              ],
            ),
          ],
        ),
      ),
    );
  }
}

