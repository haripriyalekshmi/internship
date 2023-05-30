import 'package:flutter/material.dart';
import 'package:vennikulam1/Day3/home.dart';

class Fluterform extends StatefulWidget {
  const Fluterform({Key? key}) : super(key: key);

  @override
  State<Fluterform> createState() => _FluterformState();
}

class _FluterformState extends State<Fluterform> {
  var namecontroller = TextEditingController();
  var mailcontroller = TextEditingController();
  var email = "",
      password = "";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Cyber",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: namecontroller,
                validator: (value) {
                  if (email == '') {
                    return "Enter your email";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label: Text("Email"), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (password == '') {
                    return "Enter your email";
                  }
                  return null;
                },
                controller: mailcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("Password"), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        email = namecontroller.text;
                        password = mailcontroller.text;

                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Success")));

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home(),));
                        }
                      });
                    },
                    child: Text("Login")),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
