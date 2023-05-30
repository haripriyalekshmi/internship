// import 'package:flutter/material.dart';
// import 'package:tuduapp/sql_helper.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   // All journals
//   List<Map<String, dynamic>> _journals = [];
//
//   bool _isLoading = true;
//   // This function is used to fetch all data from the database
//   void _refreshJournals() async {
//     final data = await SQLHelper.getItems();
//     setState(() {
//       _journals = data;
//       _isLoading = false;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _refreshJournals(); // Loading the diary when the app starts
//   }
//
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//
//   // This function will be triggered when the floating button is pressed
//   // It will also be triggered when you want to update an item
//   void _showForm(int? id) async {
//     if (id != null) {
//       // id == null -> create new item
//       // id != null -> update an existing item
//       final existingJournal =
//       _journals.firstWhere((element) => element['id'] == id);
//       _titleController.text = existingJournal['title'];
//       _descriptionController.text = existingJournal['description'];
//     }
// showModalBottomSheet(
//     context: context,
//    elevation:5,
//   isScrollControlled:true,
//   builder: (_) => Container(
//    padding: EdgeInsets.only(
//      top: 15,
//      left:15,
//      right: 15,
//      bottom: MediaQuery.of(context).viewInsets.bottom + 120,
//    ),
// child: Column(),
//     mainAxisSize: MainAxisSize.min,
//     crossAxisAlignment: CrossAxisAlignment.end,
//     children: [
//       TextField(
//         controller: _titleController,
//         decoration: const InputDecoration(hintText: 'Title'),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       TextField(
//         controller: _descriptionController,
//         decoration: const InputDecoration(hintText: 'Description'),
//       ),
//       const SizedBox(
//         height: 20,
//       ),
//       ElevatedButton(
//         onPressed: () async {
//           // Save new journal
//           if (id == null) {
//             await _addItem();
//           }
//
//           if (id != null) {
//             await _updateItem(id);
//           }
//
//           // Clear the text fields
//           _titleController.text = '';
//           _descriptionController.text = '';
//
//           // Close the bottom sheet
//           Navigator.of(context).pop();
//         },
//         child: Text(id == null ? 'Create New' : 'Update'),
//       )
//     ],
//   ),
//
//   )
// )