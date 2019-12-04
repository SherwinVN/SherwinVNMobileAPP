import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'stacked_icons.dart';
import 'option.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(Sherwin());

class Sherwin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SherwinVN',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: optfontoamily,
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 0.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Logo(),
                    ])),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          width: 40.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Login Now",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      launch('https://fb.com/mr.leetrung');
                    },
                    child: new Container(
                        alignment: Alignment.center,
                        height: 30.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF4364A1),
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: new Text("FaceBook Follow Me",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
