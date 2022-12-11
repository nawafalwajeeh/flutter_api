import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Example());
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleApp(),
    );
  }
}

class ExampleApp extends StatefulWidget {
  ExampleApp({Key? key}) : super(key: key);

  @override
  ExampleAppState createState() => ExampleAppState();
}

void decrement(var count) {
  if (count > 0) {
    count++;
  } else {
    return;
  }
}

class ExampleAppState extends State<ExampleApp> {
  var count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ExampleApp'),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ));
  }
}
