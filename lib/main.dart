import 'package:flutter/material.dart';
import 'package:vennikulam1/Day3/button_page.dart';
import 'package:vennikulam1/Day3/first_page.dart';
import 'package:vennikulam1/Day3/home.dart';
import 'package:vennikulam1/Day3/radiobutton.dart';
import 'package:vennikulam1/Day3/regform.dart';
import 'package:vennikulam1/Day3/second_page.dart';
import 'package:vennikulam1/Day3/splash.dart';
import 'package:vennikulam1/Day3/textfield.dart';

import 'Day3/Task2.dart';
import 'Day3/alert.dart';
import 'Day3/pop.dart';
import 'Day3/taskpopup.dart';
import 'flutter_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(Color.fromRGBO(203, 32, 45, 1).value, <int, Color>{
    50: Color.fromRGBO(203, 32, 45, 0.1),
    100: Color.fromRGBO(203, 32, 45, 0.2),
    200: Color.fromRGBO(203, 32, 45, 0.3),
    300: Color.fromRGBO(203, 32, 45, 0.4),
    400: Color.fromRGBO(203, 32, 45, 0.5),
    500: Color.fromRGBO(203, 32, 45, 0.6),
    600: Color.fromRGBO(203, 32, 45, 0.7),
    700: Color.fromRGBO(203, 32, 45, 0.8),
    800: Color.fromRGBO(203, 32, 45, 0.9),
    900: Color.fromRGBO(203, 32, 45, 1),
  },
  );


  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
      home: Logo(),
    );
  }
}
