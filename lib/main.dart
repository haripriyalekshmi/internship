import 'package:flutter/material.dart';
import 'package:tuduapp/homepage.dart';
import 'package:tuduapp/splash.dart';

import 'datepicker.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: Datep(),
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),

    );
  }
}
