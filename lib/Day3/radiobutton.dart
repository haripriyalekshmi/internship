import 'package:flutter/material.dart';
class RadioEx extends StatefulWidget {
  const RadioEx({Key? key}) : super(key: key);

  @override
  State<RadioEx> createState() => _RadioExState();
}
enum Gender{
  male,
  female,
  other
}
class _RadioExState extends State<RadioEx> {
  var groupvalue=Gender.male;
  var check1=true;
  var check2=false;
  var check3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spectrum",
          style: TextStyle(),
        ),
      ),
      body:
      Column(
        children: [
          Row(
            children: [
              Radio(
                value: Gender.male,
                onChanged: (value) {
                  setState(() {
                    groupvalue=value!;
                  });
                },
                groupValue: groupvalue,
              ),
              Text("Male"),
              Radio(
                value: Gender.female,
                onChanged: (value) {
                  setState(() {
                    groupvalue=value!;
                  });
                },
                groupValue: groupvalue,
              ),
              Text("Female"),
              Radio(
                value: Gender.other,
                onChanged: (value) {
                  setState(() {
                    groupvalue=value!;
                  });
                },
                groupValue: groupvalue,
              ),
              Text("Other")
            ],

          ),
          Row(
            children: [
              Text("Flutter"),
              Checkbox(value: check1, onChanged: (value) {
                setState(() {
                  check1=value!;
                });
              },),
              Text("Java"),
              Checkbox(value: check2, onChanged: (value) {
                setState(() {
                  check2=value!;
                });
              },),
              Text("Dart"),
              Checkbox(value: check3, onChanged: (value) {
                setState(() {
                  check3=value!;
                });
              },)
            ],
          ),
          Text(groupvalue.toString())
        ],
      )
    );
  }
}
