import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/log_in.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      backgroundImage: AssetImage('assets/images/sarfraz.jpg')),
                )),
            Divider(
              height: 0,
              thickness: 0.3,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 16),
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: (() {}),
            ),
            Divider(
              height: 0,
              thickness: 0.25,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
              leading: Icon(
                CupertinoIcons.airplane,
              ),
              title: Text(
                'Dummy',
                style: TextStyle(fontSize: 16),
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: (() {}),
            ),
            Divider(
              height: 0,
              thickness: 0.5,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
              leading: Icon(
                CupertinoIcons.move,
              ),
              title: Text(
                'Dummy',
                style: TextStyle(fontSize: 16),
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: (() {}),
            ),
            Divider(
              height: 0,
              thickness: 0.65,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 70),
              leading: Icon(
                CupertinoIcons.return_icon,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(fontSize: 16),
              ),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: (() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Log_in()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
