import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text('expansion tile demo')),
      body: Center(
        child: ExpansionTile(
            title: Text('Expansion Tile'),
            leading:Icon(Icons.ac_unit),
            backgroundColor: Colors.white12,
            children: <Widget>[
              ListTile(
                  title:Text('list tile'),
                  subtitle:Text('subtitle')
              ),
              ListTile(
                  title:Text('list tile2'),
                  subtitle:Text('subtitle2')
              )
            ],
            initiallyExpanded: false,
        ),
      ),
    );
  }
}