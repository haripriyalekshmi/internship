import 'package:flutter/material.dart';
class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createStagite() => _First_PageState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter",
        style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),),

      ),
      body: Text("HELLO I AM BEN"),
    );
  }
}
