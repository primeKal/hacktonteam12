import 'package:flutter/material.dart';
class AddPlantPage extends StatefulWidget {
  String plantname='Name';
  String plantheight='Height';
  String plantage='Age';
  @override
  _AddPlantPageState createState() => _AddPlantPageState();
}

class _AddPlantPageState extends State<AddPlantPage> {

  @override
  Widget build(BuildContext context) {
    TextStyle mystyle=TextStyle(
      fontSize: 35,
      color: Colors.black
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Plant" ),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(widget.plantname),SizedBox(child: TextField(),height: 29,width: 100,)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(widget.plantheight),SizedBox(child: TextField(),height: 29,width: 100,)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(widget.plantage),SizedBox(child: TextField(),height: 29,width: 100,)],
            ),
            Center(
              child: FlatButton(child: Text("Save",
                          style: TextStyle(color: Colors.blue),),),
            )
          ],
        ),
      ),
    );
  }
}
