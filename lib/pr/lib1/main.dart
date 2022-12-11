import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Provuder App',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: MyProviderApp(title: 'Flutter provider app'),
  ));
}

class MyProviderApp extends StatelessWidget {
  final String? title;
  const MyProviderApp({this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String result = Provider.of<String>(context);
    return Scaffold(
      appBar: AppBar(title: Text(this.title!)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed The button this many times'),
            Text(
              '$result',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, tooltip: 'Increment', child: Icon(Icons.add)),
    );
  }
}
