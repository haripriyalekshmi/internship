import 'package:flutter/material.dart';
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spectrum",
        style: TextStyle(color: Colors.black),),
            actions: [
              PopupMenuButton(itemBuilder: (context) => [
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.stop_circle,color: Colors.redAccent,),
                  title: Text("Start Recording",style: TextStyle(color: Colors.redAccent),),

                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.pause,color: Colors.redAccent,),
                  title: Text("Pause Record",style: TextStyle(color: Colors.redAccent),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.people,color: Colors.purple,),
                  title: Text("Members",style: TextStyle(color: Colors.purple),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.person_add,color: Colors.purple,),
                  title: Text("Invite Members",style: TextStyle(color: Colors.purple),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.link,color: Colors.purple,),
                  title: Text("Copy Invitation Url",style: TextStyle(color: Colors.purple),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.settings,color: Colors.purple,),
                  title: Text("Settings",style: TextStyle(color: Colors.purple),),
                )),
                PopupMenuItem(child: ListTile(
                  leading: Icon(Icons.exit_to_app,color: Colors.purple,),
                  title: Text("End Meeting",style: TextStyle(color: Colors.purple),),

                ))
              ]),

        ],
      ),
    );
  }
}
