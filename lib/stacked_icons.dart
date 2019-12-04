import 'package:flutter/material.dart';
import 'option.dart';


class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: <Widget>[
        new StakedIcons(),        
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                  child: new Text(
                    "Sherwin VN",
                    style: new TextStyle(fontFamily: optfontoamily,fontSize: 30.0,color: Colors.blue,fontWeight: FontWeight.bold,),
                  ),
                )
              ],
            ),
      ]
    )
    );
  }
}



class StakedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(right: 110.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFC6A7F)),
                  child: new Icon(
                    Icons.directions_car,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 30.0, top: 0.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF18D191)),
                  child: new Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFFCE56)),
                  child: new Icon(
                    Icons.child_care,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 120.0, top: 00.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF45E0EC)),
                  child: new Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                )
              ],
            );
  }
}
