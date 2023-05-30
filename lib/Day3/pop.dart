import 'package:flutter/material.dart';
class Popmenu extends StatefulWidget {
  const Popmenu({Key? key}) : super(key: key);

  @override
  State<Popmenu> createState() => _PopmenuState();
}

class _PopmenuState extends State<Popmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zomato"),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: Text("Search")),
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("Refresh")),
            PopupMenuItem(child: Text("Copy link")),
            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.stop),
              title: Text("stop recording"),
            ))
          ])
        ],
      ),
    );
  }
}
