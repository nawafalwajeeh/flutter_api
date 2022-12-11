import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// void main() => runApp(UrlApp());
//
// class UrlApp extends StatelessWidget {
//   const UrlApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: URLPage(),
//     );
//   }
// }
//
// class User {
//   final int id;
//   final int userId;
//   final String title;
//   final String body;
//   User({
//     required this.id,
//     required this.userId,
//     required this.title,
//     required this.body,
//   });
// }
//
// class URLPage extends StatefulWidget {
//   const URLPage({Key? key}) : super(key: key);
//   @override
//   State<URLPage> createState() => _URLPageState();
// }
//
// class _URLPageState extends State<URLPage> {
//   Future<List<User>> getRequest() async {
//     String url = "https://jsonplaceholder.typicode.com/posts";
//     final response = await http.get(Uri.parse(url));
//     var responseData = jsonDecode(response.body);
//
//     List<User> users = [];
//     for (var singleUser in responseData) {
//       User user = User(
//         id: singleUser["id"],
//         userId: singleUser["userId"],
//         title: singleUser["title"],
//         body: singleUser["body"],
//       );
//       users.add(user);
//     }
//     return users;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('HTTP Get Request '),
//           leading: Icon(Icons.get_app),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(16),
//           child: FutureBuilder(
//             future: getRequest(),
//             builder: (BuildContext ctx, AsyncSnapshot snapshot) {
//               if (snapshot.data == null) {
//                 return Container(
//                   child: Center(
//                     child: CircularProgressIndicator(),
//                   ),
//                 );
//               } else {
//                 return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (ctx, snapshot) => ListTile(
//                     title: Text(snapshot.data[index].title),
//                     subtitle: Text(snapshot.data[index].body),
//                     contentPadding: EdgeInsets.only(bottom: 20),
//                   ),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
