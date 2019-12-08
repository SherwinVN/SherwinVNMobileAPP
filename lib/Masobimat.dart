import 'package:flutter/material.dart';
import 'stacked_icons.dart';

class Masobimat extends StatelessWidget {
  var txtthamso = new TextEditingController();
  var txtthamso2 = new TextEditingController();

  _printLatestValue() {
    txtthamso2.text = txtthamso.text;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: new Logo(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: txtthamso,
                  onChanged: _printLatestValue(),
                  decoration: new InputDecoration(labelText: "Tham số"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Key:",
                        style: new TextStyle(fontSize: 20, color: Colors.green),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "13245645",
                          style:
                              new TextStyle(fontSize: 20, color: Colors.green),
                              textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: new Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: new Text("Login",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
