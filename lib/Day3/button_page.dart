import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Spectrum",
        style: TextStyle(color: Colors.black,),),
      ),
      body: Column(
        children: [
          Container(
              width: width,
              child: Text("Flutterbutton",)),

          // TextButton(onPressed: () {
          //
          // }, child: Text("Login")),
          // OutlinedButton(onPressed: () {
          //
          // }, child: Text("Login")),
          // ElevatedButton(onPressed: () {
          //
          // }, child: Text("Login")),
          // IconButton(onPressed: () {
          //
          // }, icon: Icon(Icons.add))

        ],
      ),
    );
  }
}
