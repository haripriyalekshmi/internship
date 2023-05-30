// import 'package:flutter/material.dart';
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   final _formkey = GlobalKey<FormState>();
//  tt="",dd="";
//   var titlecontroller=TextEditingController();
//   var descontroller=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("Appbar",style: TextStyle(color: Colors.black),),
//       ),
//      body: Form(
//        key: _formkey,
//        child: Column(
//        children: [
//       Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: TextFormField(
//           validator: (value){
//             if(tt=""){
//               return "Enter your title";
//             }
//             return null;
//           },
//           controller: titlecontroller,
//           decoration: InputDecoration(
//             label: Text("Title"),border: OutlineInputBorder()),
//      ),
//       ),
//     Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: TextFormField(
//         validator: (value){
//           if(dd=" "){
//             return "Enter your title";
//           }
//           return null;
//         },
//         controller: descontroller,
//       decoration: InputDecoration(
//       label: Text("Description"),border: OutlineInputBorder()),
//       ),
//     ),
//     Text(""),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: () {
//         setState(() {
// tt=titlecontroller.text;
// dd=descontroller.text;
//         });
//         if(_formkey.currentState!.validate()){
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Success"))
//           );
//         }
//
//       }, child: Text("Save")
//           ),
//     ),
//        ],
//      ),),
//     );
//   }
// }
