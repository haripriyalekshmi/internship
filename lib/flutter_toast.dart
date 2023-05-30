import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Toast_Example extends StatefulWidget {
  const Toast_Example({Key? key}) : super(key: key);

  @override
  State<Toast_Example> createState() => _Toast_ExampleState();
}

class _Toast_ExampleState extends State<Toast_Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        title: Text("Android",
        style: TextStyle(color: Colors.white),
      ),
      ),
      body: Column(
        children: [
          Text(""),
          OutlinedButton(onPressed: () {
            setState(() {
              Fluttertoast.showToast(
                  msg: "Hello",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0
              );

            });

          }, child: Text("Click"))
        ],
      ),
    );
  }
}
