import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future fetchPhotos() async {
    String url = 'https://jsonplaceholder.typicode.com/photos';
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var obj = json.decode(res.body);
      return obj;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
          child: FutureBuilder(
        future: fetchPhotos(),
        builder: (ctx, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
              itemBuilder: (_, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(snapshot.data[index]['thumbnailUrl'])),
                  title: Text(snapshot.data[index]['title']),
                  subtitle: Text('${snapshot.data[index]['id']}'),
                );
              },
              itemCount: 12,
            );
          }
        },
      )),
    );
  }
}
