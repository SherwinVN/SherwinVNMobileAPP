import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'stacked_icons.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    TextEditingController  txtUser = new TextEditingController ();
    txtUser.text="Admin";
    TextEditingController  txtpass = new TextEditingController ();
    txtpass.text="123";
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.orange, //or set color with: Color(0xFF0000FF)
    ));
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: Container(
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 0.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Logo(),
                    ])),
            Padding(
              padding:
              
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: txtUser,
                decoration: new InputDecoration(labelText: 'Username'),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: txtpass,
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        if (checkLogin(txtUser.value.text,txtpass.value.text)) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Login",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: new Text("Forgot Password?",
                            style: new TextStyle(
                                fontSize: 17.0, color: Color(0xFF18D191)))),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: new Text("Create A New Account ",
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Color(0xFF18D191),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  bool checkLogin(String user, String pass) {
    bool boo = false;
    if (user.toLowerCase() == "admin" && pass == "123") boo = true;
    return boo;
  }
}
