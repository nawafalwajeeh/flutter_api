import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChangeNotifierProvider<CounterProvider>(
    child: MaterialApp(
      title: 'Provuder App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyProviderApp(),
    ),
    create: (_) => CounterProvider(),
  ));
}

int n = 0;

class MyProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('${n++}');
    var count = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count.counter(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test 1',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            CounterWidget(),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test 3',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Test 4',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class CounterProvider with ChangeNotifier {
  int c = 0;
  counter() {
    c++;
    notifyListeners();
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context, listen: true);
    return Text(
      '${count.c}',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}

//--------------------------------------
// class Counter extends StatefulWidget {
//   const Counter({Key? key}) : super(key: key);

//   @override
//   _CounterState createState() => _CounterState();
// }

//----------------------------------
// class MyProviderApp extends StatelessWidget {
//   final String? title;
//   const MyProviderApp({this.title, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     String result = Provider.of<String>(context);
//     return Scaffold(
//       appBar: AppBar(title: Text(this.title!)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('You have pushed The button this many times'),
//             Text(
//               '$result',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {}, tooltip: 'Increment', child: Icon(Icons.add)),
//     );
//   }
// }
