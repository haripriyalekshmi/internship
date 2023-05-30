import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vennikulam1/Day3/textfield.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer();
  }

  _timer()  {
     Timer(Duration(seconds: 5), () {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Fluterform(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zomato",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                child: Image.network(
                    height: 100,
                "https://upload.wikimedia.org/wikipedia/commons/2/2d/Zomato_Logo.jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(58.0),
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
