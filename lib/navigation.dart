import 'package:flutter/material.dart';
import 'package:sherwinvn/Masobimat.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

final drawerItems = [
  new DrawerItem("Fragment 1", Icons.rss_feed),
  new DrawerItem("Fragment 2", Icons.local_pizza),
  new DrawerItem("Fragment 3", Icons.info)
];

class NavigationMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Sherwin VN"),
            accountEmail: Text("levantrungeale28595@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Image.asset(
                'assets/images/ic_launcher.png',
                width: 35,
                height: 35,
              ),
            ),
          ),
          ListTile(
            title: Text("My Work"),
            trailing: Icon(Icons.work),
          ),
          ListTile(
            title: Text("Social"),
            trailing: Icon(Icons.nature_people),
            subtitle: Text("Bạn đang tham gia MXH nào?") ,
          ),
          ListTile(
            title: Text("About Me!"),
            trailing: Icon(Icons.healing),
            subtitle: Text("Hãy thử tìm hiểu nhau nhé!") ,
            
          ),
          Column(
            mainAxisAlignment:  MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.settings),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Text("Setting", textAlign: TextAlign.center),
                    ),
                    Icon(Icons.feedback),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Feedback", textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
