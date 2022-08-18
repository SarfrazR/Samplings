import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
            child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      'Sarfraz',
                      style: TextStyle(fontSize: 20),
                    ),
                    accountEmail: Text('sarfrazrafique61@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/sarfraz.jpg')),
                  )),
                  Divider(
                height: 0,
                thickness: 0.3,
                indent: 20.0,
                endIndent: 20.0,
                color: Colors.white,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 70),
                leading: Icon(
                  CupertinoIcons.home,
                ),
                title: Text(
                  'Home',
                  style: TextStyle( fontSize: 16),
                ),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: (() {
                  
                }),
              ),
              Divider(
                height: 0,
                thickness: 0.25,
                indent: 20.0,
                endIndent: 20.0,
                color: Colors.white,
              )
              ,
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 70),
                leading: Icon(
                  CupertinoIcons.airplane,
                ),
                title: Text(
                  'Dummy',
                  style: TextStyle( fontSize: 16),
                ),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: (() {
                  
                }),
              ),
              Divider(
                height: 0,
                thickness: 0.5,
                indent: 20.0,
                endIndent: 20.0,
                color: Colors.white,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 70),
                leading: Icon(
                  CupertinoIcons.move,
                ),
                title: Text(
                  'Dummy',
                  style: TextStyle( fontSize: 16),
                ),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: (() {
                  
                }),
              ),
              Divider(
                height: 0,
                thickness: 0.65,
                indent: 20.0,
                endIndent: 20.0,
                color: Colors.white,
              )
              ,
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 70),
                leading: Icon(
                  CupertinoIcons.return_icon,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle( fontSize: 16),
                ),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: (() {
                  Navigator.pop(context);
                }),
              )
            ],
          ),
        )),
      ),
    );
  }
}
