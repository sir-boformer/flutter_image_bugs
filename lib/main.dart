import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Image Bugs',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new SafeArea(
          child: new ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              new Text('devicePixelRatio: ${ui.window.devicePixelRatio}'),
              new Divider(),
              new Text('Image.asset with different scales:'),
              new Row(
                children: <Widget>[
                  new Expanded(child: new Text('Scale null')),
                  new Image.asset('images/test.png', width: 48.0, height: 48.0)
                ],
              ),
              new Row(
                children: <Widget>[
                  new Expanded(child: new Text('Scale 1x')),
                  new Image.asset('images/test.png', scale: 1.0, width: 48.0, height: 48.0)
                ],
              ),
              new Row(
                children: <Widget>[
                  new Expanded(child: new Text('Scale 2x')),
                  new Image.asset('images/test.png', scale: 2.0, width: 48.0, height: 48.0)
                ],
              ),
              new Row(
                children: <Widget>[
                  new Expanded(child: new Text('Scale 3x')),
                  new Image.asset('images/test.png', scale: 3.0, width: 48.0, height: 48.0)
                ],
              ),
              new Divider(),
              new Text(''),
              new Container()
            ],
          ),
        ),
      ),
    );
  }
}
