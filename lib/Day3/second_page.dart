import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("spectrum",
         style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),

      ),
      body: Text("vennikulam"),
    );
  }
}
