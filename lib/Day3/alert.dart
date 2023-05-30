import 'package:flutter/material.dart';
class Alertex extends StatefulWidget {
  const Alertex({Key? key}) : super(key: key);

  @override
  State<Alertex> createState() => _AlertexState();
}

class _AlertexState extends State<Alertex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spectrum",
        style: TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: Column(
        children: [
          Text("Alert"),
          ElevatedButton(onPressed: () {
            setState(() {
               showDialog(context: context, builder: (context) {
return AlertDialog(
  title: Text("Do you want to exit from this application?"),
  actions: [
    Row(
      children: [
        ElevatedButton(onPressed: () {

        }, child: Text("Yes")),
        ElevatedButton(onPressed: () {

        }, child: Text("No"))
      ],
    )
  ],
);
               },);
            });
          }, child: Text("Exit"))
        ],
      ),
    );
  }
}
