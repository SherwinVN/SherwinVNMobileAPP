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
            title: Text("Cấp mã số bí mật"),
            trailing: Icon(Icons.code),
            onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Masobimat()));
             
            },
          ),
          ListTile(
            title: Text("Facebook"),
            trailing: Icon(Icons.person_pin),
          ),          
          ListTile(
            title: Text("About Me!"),
            trailing: Icon(Icons.healing),
          ),
        ],
      ),
    );
  }
}
