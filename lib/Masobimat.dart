import 'package:flutter/material.dart';
import 'stacked_icons.dart';

class Masobimat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(children: <Widget>[          
            Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 0.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Logo(),
                    ])),
        ]),
      ),
    );
  }
}
