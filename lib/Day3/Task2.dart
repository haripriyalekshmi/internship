import 'package:flutter/material.dart';
class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        title: Text("Task",
        style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Text(""),
          ElevatedButton(onPressed: () {
setState(() {
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("Reset Settings?",
      style: TextStyle(fontWeight: FontWeight.bold),),
      actions: [
        Row(
          children: [
            SizedBox(

                width:250,
                child: Text("This will rest your device to its default factory settings",style: TextStyle(color: Colors.grey),))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Row(

          children: [
            TextButton(onPressed: () {

            }, child: Text("Cancel",style: TextStyle(color: Colors.purple),)),
            TextButton(onPressed: () {

            }, child: Text("Accept",style: TextStyle(color: Colors.purple),))
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        )
      ],

    );
  },);
});
          }, child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Reset",style: TextStyle(color: Colors.black),),
          )),
        ],
      ),
    );
  }
}
