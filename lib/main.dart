import 'package:flutter/material.dart';

void main(){

  runApp(new MaterialApp(
    home:new MyApp(),
  ));

}

class MyApp extends StatefulWidget{
  @override
  createState() => new _State();

}

class _State extends State<MyApp> {

  String _value = "Hello World";
  int _value1 = 0;

  void _onClick(String value)
  {
    setState( () {
      _value = new DateTime.now().toString();
    });
  }

  void _onPressed()
  {
    setState( () {
      _value = new DateTime.now().toString();
    });
  }

  void _add() {
    setState(() {
      _value1++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Basic App'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text(_value),
                  new Text("Value = ${_value1}"),
                  new ElevatedButton(onPressed:() => _onClick("Hello Bryan") , child: new Text('Click me'),),
                  new TextButton(onPressed:() => _onPressed , child: new Text('Click me'),),
                  new IconButton(icon:new Icon(Icons.add),onPressed: _add , ),

                ],
              )
          )
      ),
    );
  }
}











