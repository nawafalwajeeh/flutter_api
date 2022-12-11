import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StateApp(),
  ));
}

class StateApp extends StatefulWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  State<StateApp> createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world'),
        centerTitle: true,
      ),
      body: loading
          ? Center(
              child: Container(
                child: Text(
                  'Hello world!',
                  style: TextStyle(fontSize: 38),
                ),
              ),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        loading = !loading;
                      });
                      print(loading);
                    },
                    child: Text('Loading Toggler')),
              ],
            )),
    );
  }
}
