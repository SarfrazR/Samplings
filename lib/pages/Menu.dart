import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/widget/Drawer.dart';

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
        drawer: MyDrawer()
      ),
    );
  }
}
