import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

// void main() {
//   _ApiAppState s = _ApiAppState();
//   s.getPost();
//   print('hello');
//   runApp(MaterialApp(home: ApiApp()));
// }
//
// class ApiApp extends StatefulWidget {
//   @override
//   State<ApiApp> createState() => _ApiAppState();
// }
//
// class _ApiAppState extends State<ApiApp> {
//   List posts = [];
//   Future getPost() async {
//     String url = 'https://jsonplaceholder.typicode.com/posts';
//     var response = await http.get(Uri.parse(url));
//     var responseBody = jsonDecode(response.body);
//     return responseBody;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('app'),
//       ),
//       body: FutureBuilder(
//         future: getPost(),
//         builder: (context, snapshot) {
//           return ListView.builder(
//             itemBuilder: (context, index) {
//               return Container(
//                   color: Colors.white,
//                   margin: EdgeInsets.only(top: 10, bottom: 10),
//                   child: Text('${snapshot.data[index]['title']}'));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

//----------------------------------------------
// void main() {
//   _ApiAppState s = _ApiAppState();
//   s.getPost();
//   print('hello');
//   runApp(MaterialApp(home: ApiApp()));
// }
//
// class ApiApp extends StatefulWidget {
//   @override
//   State<ApiApp> createState() => _ApiAppState();
// }
//
// class _ApiAppState extends State<ApiApp> {
//   List posts = [];
//   Future getPost() async {
//     String url = 'https://jsonplaceholder.typicode.com/posts';
//     var response = await http.get(Uri.parse(url));
//     var responseBody = jsonDecode(response.body);
//     setState(() {
//       posts.addAll(responseBody);
//     });
//     print(posts);
//   }
//
//   @override
//   void initState() {
//     getPost();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('app'),
//       ),
//       body: posts == null || posts.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: posts.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                     color: Colors.white,
//                     margin: EdgeInsets.only(top: 10, bottom: 10),
//                     child: Text('${posts[index]['title']}'));
//               },
//             ),
//     );
//   }
// }
