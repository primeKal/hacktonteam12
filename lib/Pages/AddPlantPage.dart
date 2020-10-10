import 'package:flutter/material.dart';
class AddPlantPage extends StatefulWidget {
  String plantname;
  String plantheight;
  String plantage;
  @override
  _AddPlantPageState createState() => _AddPlantPageState();
}

class _AddPlantPageState extends State<AddPlantPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Plant",
                  style: Theme.of(context).textTheme.headline4),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [Text(widget.plantname),TextField()],
            ),
            Row(
              children: [Text(widget.plantheight),TextField()],
            ),
            Row(
              children: [Text(widget.plantage),TextField()],
            ),
            Center(
              child: FlatButton(child: Text("Save"),),
            )
          ],
        ),
      ),
    );
  }
}
