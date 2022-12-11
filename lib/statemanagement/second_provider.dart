import 'package:flutter/material.dart';
import 'package:flutter_api/pr/count.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<CounterProvider>(
    create: (BuildContext context) => CounterProvider(),
    child: MaterialApp(
      home: StateApp(),
    ),
  ));
}

int number = 0;

class StateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<CounterProvider>(context, listen: false);
    print('number: ${number++}');
    return Scaffold(
        appBar: AppBar(
          title: Text('provider'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Test 3',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              CounterWidget(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Test 4',
                style: TextStyle(fontSize: 20),
              ),
              RaisedButton(
                onPressed: () => counter.counter(),
                child: Text('Click'),
                color: number % 2 == 0 ? Colors.green : Colors.blue,
              ),
            ],
          ),
        ));
  }
}
