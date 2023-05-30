import 'package:flutter/material.dart';

class Regform extends StatefulWidget {
  const Regform({Key? key}) : super(key: key);

  @override
  State<Regform> createState() => _RegformState();
}

class _RegformState extends State<Regform> {
  var fname = "", lname = "", email = "", pass = "", conpass = "";
  var namecontroller = TextEditingController();
  var lastcontroller = TextEditingController();
  var mailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var concontroller = TextEditingController();
  bool _showpassword = true;
  bool _showcpassword = true;
  final _regkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "spectrum",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(children: [
          Form(
            key: _regkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: namecontroller,
                    validator: (value) {
                      if (fname == '') {
                        return "Enter your first name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        label: Text("Firstname"), border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (lname == '') {
                        return "Enter your last name";
                      }
                      return null;
                    },
                    controller: lastcontroller,
                    decoration: InputDecoration(
                        label: Text("Lastname"), border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (email == '') {
                        return "Enter your email";
                      }
                      return null;
                    },
                    controller: mailcontroller,
                    decoration: InputDecoration(
                        label: Text("Email"), border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (pass == '') {
                        return "Enter your password";
                      }
                      return null;
                    },
                    controller: passcontroller,
                    obscureText: _showpassword,
                    decoration: InputDecoration(
                        suffix: InkWell(
                          child: _showpassword
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onTap: () {
                            viewPassword();
                          },
                        ),
                        label: Text("Password"),
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (conpass == '') {
                        return "Enter your confirm password";
                      }
                      return null;
                    },
                    controller: concontroller,
                    obscureText: _showcpassword,
                    decoration: InputDecoration(
                        suffix: InkWell(
                            child: _showcpassword
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onTap: () {
                              viewcPassword();
                            }),
                        label: Text("Confirm password"),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            fname = namecontroller.text;
                            lname = lastcontroller.text;
                            email = mailcontroller.text;
                            pass = passcontroller.text;
                            conpass = concontroller.text;

                            if (_regkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Success")));
                            }
                          });
                        },
                        child: Text("Register")),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }

  void viewPassword() {
    setState(() {
      _showpassword = !_showpassword;
    });
  }

  void viewcPassword() {
    setState(() {
      _showcpassword = !_showcpassword;
    });
  }
}
