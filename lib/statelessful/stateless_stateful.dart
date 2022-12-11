import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestFul(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Text('Add'),
          ),
        ),
      ),
    );
  }
}

//-----------------------------------
class TestFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestFulState();
  }
}

class _TestFulState extends State<TestFul> {
  var text = 'How Are You';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('$text'),
          RaisedButton(
            onPressed: () {
              setState(() {
                text = 'Welcome';
              });
              print(text);
            },
            color: Colors.yellow,
            child: Text('Change Text'),
          ),
        ]),
      ),
    );
  }
}
