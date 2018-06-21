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
              new Row(
                children: <Widget>[
                  new Expanded(child: new Text('Image.asset')),
                  new Image.asset('images/test.png', width: 48.0, height: 48.0)
                ],
              ),
              new Divider(),
              new Row(
                children: <Widget>[
                  new Text('Image.asset\nwith BoxFit.none\nand repeat'),
                  new Expanded(
                    child: new Image.asset(
                      'images/test.png',
                      height: 200.0,
                      fit: BoxFit.none,
                      repeat: ImageRepeat.repeat,
                    ),
                  )
                ],
              ),
              new Divider(),
              new Row(
                children: <Widget>[
                  new Text('Container\nwith BoxDecoration'),
                  new Expanded(
                    child: new Container(
                      height: 200.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: new AssetImage('images/test.png'), repeat: ImageRepeat.repeat, fit: BoxFit.none),
                      ),
                    ),
                  ),
                ],
              ),
              new Divider(),
              new Row(
                children: <Widget>[
                  new Text('Container\nwith BoxDecoration\nvariant 1.0x'),
                  new Expanded(
                    child: new Container(
                      height: 200.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new ExactAssetImage('images/test.png', scale: 1.0),
                          repeat: ImageRepeat.repeat,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
