import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ThirdStateApp(),
  ));
}

class ThirdStateApp extends StatefulWidget {
  ThirdStateApp({Key? key}) : super(key: key);
  @override
  State<ThirdStateApp> createState() => ThirdStateAppState();
}

class ThirdStateAppState extends State<ThirdStateApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third App'),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '${count}',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => count++);
        },
        child: Icon(Icons.add, size: 50),
      ),
    );
  }
}
