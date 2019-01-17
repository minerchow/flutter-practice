import 'package:flutter/material.dart';
import 'each_view.dart';
class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;
  int _index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _eachView = List();
    _eachView..add(EachView('Home'))..add(EachView('Me'));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:_eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //print('22');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add,color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape:CircularNotchedRectangle(),
        child: Row(
            mainAxisSize:MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon:Icon(Icons.home),
                  color:Colors.white,
                  onPressed:(){
                  }
              ),
              IconButton(
                  icon:Icon(Icons.airport_shuttle),
                  color:Colors.white,
                  onPressed:(){
                  }
              ),
            ],
        ),
      ),
    );
  }
}
